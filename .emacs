

(setq package-enable-at-startup nil)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)










(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#3c3836" "#fb4934" "#b8bb26" "#fabd2f" "#83a598" "#d3869b" "#8ec07c" "#ebdbb2"])
 '(custom-enabled-themes (quote (gruvbox)))
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "3fd0fda6c3842e59f3a307d01f105cce74e1981c6670bb17588557b4cebfe1a7" default)))
 '(fill-column 80)
 '(package-selected-packages
   (quote
    (company-irony flycheck-irony irony-eldoc irony slime solarized-theme gruvbox-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Source Code Pro" :foundry "ADBO" :slant normal :weight normal :height 103 :width normal)))))










;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))
;; Make it so that it recognizes cl files as Common Lisp.
(add-to-list 'auto-mode-alist '("\\.cl\\'" . lisp-mode))









;; Other plugin stuff.

;; Git stuff.
(require 'git)

;; Make it so that windows size *aesthetically*.
;; (require 'golden-ratio)
;; (golden-ratio-mode 1)

;; Highlight trailing whitespace.
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face lines-tail))

;; (add-hook 'prog-mode-hook 'whitespace-mode)
(global-whitespace-mode +1)









;; Stuff for formatting C code.

;; (defun des-knf ()
;;   (interactive)

;;   ;; Basic indent is 8 spaces
;;   (make-local-variable 'c-basic-offset)
;;   (setq c-basic-offset 8)

;;   ;; Continuation lines are indented 4 spaces
;;   (make-local-variable 'c-offsets-alist)
;;   (c-set-offset 'arglist-cont 4)
;;   (c-set-offset 'arglist-cont-nonempty 4)
;;   (c-set-offset 'statement-cont 4)

;;   ;; Labels are flush to the left
;;   (c-set-offset 'label [0])

;;   ;; Fill column
;;   (make-local-variable 'fill-column)
;;   (setq fill-column 74))

;; (defun des-programming-keys ()
;;   (local-set-key "\C-m" 'newline-and-indent)
;;   (local-set-key [RET] 'newline-and-indent))

;; (defun des-c-mode-hook ()
;;   (des-knf)
;;   (des-programming-keys))

;; (add-hook 'c-mode-common-hook 'des-c-mode-hook)

(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'openbsd-knf-style)
(c-add-style "OpenBSD" openbsd-knf-style)
;; (setq c-default-style '((c-mode . "OpenBSD")))
;; (setq c-default-style '((c-mode . "k&r")))
;; (setq c-default-style '((c++-mode . "k&r")))










;; =============
;; irony-mode
;; =============
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
;; =============
;; company mode
;; =============
(add-hook 'c++-mode-hook 'company-mode)
(add-hook 'c-mode-hook 'company-mode)
;; replace the `completion-at-point' and `complete-symbol' bindings in
;; irony-mode's buffers by irony-mode's function
(defun my-irony-mode-hook ()
  (define-key irony-mode-map [remap completion-at-point]
    'irony-completion-at-point-async)
  (define-key irony-mode-map [remap complete-symbol]
    'irony-completion-at-point-async))
(add-hook 'irony-mode-hook 'my-irony-mode-hook)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-irony))
;; (optional) adds CC special commands to `company-begin-commands' in order to
;; trigger completion at interesting places, such as after scope operator
;;     std::|
(add-hook 'irony-mode-hook 'company-irony-setup-begin-commands)
;; =============
;; flycheck-mode
;; =============
(add-hook 'c++-mode-hook 'flycheck-mode)
(add-hook 'c-mode-hook 'flycheck-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
;; =============
;; eldoc-mode
;; =============
(add-hook 'irony-mode-hook 'irony-eldoc)
;; ==========================================
;; (optional) bind TAB for indent-or-complete
;; ==========================================
(defun irony--check-expansion ()
  (save-excursion
    (if (looking-at "\\_>") t
      (backward-char 1)
      (if (looking-at "\\.") t
	(backward-char 1)
	(if (looking-at "->") t nil)))))
(defun irony--indent-or-complete ()
  "Indent or Complete"
  (interactive)
  (cond ((and (not (use-region-p))
	      (irony--check-expansion))
	 (message "complete")
	 (company-complete-common))
	(t
	 (message "indent")
	 (call-interactively 'c-indent-line-or-region))))
(defun irony-mode-keys ()
  "Modify keymaps used by `irony-mode'."
  (local-set-key (kbd "TAB") 'irony--indent-or-complete)
  (local-set-key [tab] 'irony--indent-or-complete))
(add-hook 'c-mode-common-hook 'irony-mode-keys)
