(setq package-enable-at-startup nil)
(package-initialize)

;; Set your lisp system and, optionally, some contribs
(setq inferior-lisp-program "/usr/bin/sbcl")
(setq slime-contribs '(slime-fancy))

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")                         
                         ("melpa" . "https://melpa.org/packages/")))


(add-to-list 'auto-mode-alist '("\\.cl\\'" . lisp-mode))

(require 'whitespace)
(setq whitespace-style '(face empty tabs lines-tail trailing))
(global-whitespace-mode t)

(require 'git)
