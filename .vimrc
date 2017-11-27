set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'vim-scripts/candycode.vim'
Plugin 'w0ng/vim-hybrid'
Plugin 'crusoexia/vim-dracula'
Plugin 'tomasr/molokai'
Plugin 'romainl/Apprentice'
Plugin 'nanotech/jellybeans.vim'
Plugin 'sjl/badwolf'

" A status line.
Plugin 'vim-airline/vim-airline'
" Plugin 'powerline/powerline'

" Syntax checking, mainly for Python.
" Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'

"Syntax highlighting
"For C, choose one of these.
" Plugin 'octol/vim-cpp-enhanced-highlight'
" Plugin 'justinmk/vim-syntax-extra'
Plugin 'jaxbot/semantic-highlight.vim'

" For git and compiling.
Plugin 'tpope/vim-fugitive'
Plugin 'idanarye/vim-merginal'
Plugin 'tpope/vim-dispatch'

"Plugin 'roman/golden-ratio'

" For easy comment management.
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'

" Completion for programming in various languages.
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'justmao945/vim-clang'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Rip-Rip/clang_complete'
Plugin 'davidhalter/jedi-vim'

" For Python programming.
Plugin 'nvie/vim-flake8'
Plugin 'hynek/vim-python-pep8-indent'

" Go Programming
Plugin 'fatih/vim-go'

" Rust Programming
Plugin 'rust-lang/rust.vim'

" For formatting code
Plugin 'rhysd/vim-clang-format'

" Snippets.
Plugin 'SirVer/ultisnips'
" Extra snippets
Plugin 'honza/vim-snippets'

" Fuzzy finding.
Plugin 'ctrlpvim/ctrlp.vim'

" For taking notes and stuff.
Plugin 'vimoutliner/vimoutliner'

" Tagbar for C, C++, and Go.
Plugin 'majutsushi/tagbar'

" Physics based scrolling
Plugin 'yuttie/comfortable-motion.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line








" Syntax highlighting.
syntax on

" Allow better switching of files.
set hidden

set wildmode=longest,list,full
" Better command-line completion.
set wildmenu

" Show partial commands in the last line of the screen.
set showcmd

" Show line numbers.
set number

" Make line numbers relative.
set relativenumber

" Underlines current line.
set cursorline

set incsearch "search as characters are entered
" Highlight matches.
set hlsearch

" Auto read changed files without unsaved changes. This is for use with git and
" the command :Git checkout.
set autoread

" Cursor can't be on the top or bottom line.
set scrolloff=5

" Enable external vimrcs for specific projects.
set exrc

" Set the current directory to the file automatically.
set autochdir

" For airline for some reason
set laststatus=2

" For mouse.
set mouse=a





" Wrap columns at 80 by default, disable this on a filetype basis.
set textwidth=80

" Highlight the 80th column so it is not crossed.
set colorcolumn=80

" For making tab completion better
set switchbuf=useopen,usetab,newtab

" This is for Gentoo. YouCompleteMe didn't work without it but other systems
" shouldn't need this.
" let g:ycm_server_python_interpreter="/usr/bin/python2.7"

" Disables autocommenting.
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"set formatoptions-=cro
set formatoptions-=c
set formatoptions-=r
set formatoptions-=o

" Sets tabs to be represented by four spaces to maake reading files easier. This
" doesn't make it so that tabs are spaces, and these settings should be
" overridden in language specific settings such as C.
set tabstop=4
set shiftwidth=4

" Sane backspacing, only required on some platforms.
set backspace=indent,eol,start

" Display whitespace chars as certain characters. Delete this stuff if you don't
" want those annoying characters for spaces.
"set listchars=eol:$,tab:»-,trail:~,extends:<,precedes:>,space:·
" set listchars=tab:▸\ ,trail:~,extends:<,precedes:>,space:·,eol:¬
" set list
"
let g:netrw_winsize = 25

let g:rustfmt_autosave = 1





" set termguicolors

" Enable italics in terminal.
let g:gruvbox_italic=1
" Get rid ot that annoying bold gruvbox stuff.
let g:gruvbox_bold=0
" Other gruvbox stuff.
let g:gruvbox_underline=1
let g:gruvbox_undercurl=1

" Highlight trailing whitespace.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" Show trailing whitespace and spaces before a tab:
"match ExtraWhitespace /\s\+$\| \+\ze\t/
" Show trailing whitespace except when typing at the end of a line.
match ExtraWhitespace /\s\+\%#\@<!$\| \+\ze\t/

" Colors
" colorscheme default
" colorscheme hybrid
" colorscheme solarized
colorscheme gruvbox
set background=dark





" Fonts
" set guifont=DejaVu\ Sans\ Mono\ 11
set guifont=Source\ Code\ Pro\ 10
" set guifont=Inconsolata\ 11

" Use this font for Windows. It might not work on other systems, though.
" set guifont=Source_Code_Pro:h11:cANSI:qDRAFT









" Key bindings and whatnot.

let mapleader=","

" Runs a build process using vim-dispatch.
noremap <F4> :Make<CR>

" These are in case you want to exit insert mode faster.
" inoremap xx <ESC>
" inoremap xz <ESC>
" inoremap XZ <ESC>

" Clear the highlighting on strings that were searched
nnoremap <leader>no :noh<CR>

" Toggle on and off relative lines numbers.
noremap <leader>rn :set relativenumber!<CR>

" Insert brackets
inoremap <leader>{ {<enter>}<esc>ko

" Toggle the background color in colorthemes like solarized or gruvbox.
map <leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" For faster use of vim-fugitive.
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gw :Gwrite<CR>
nnoremap <leader>gg :Git<space>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>go :Git checkout<space>
nnoremap <leader>gr :Gread<CR>
nnoremap <leader>gd :Gdiff<CR>

" For faster executing of shell commands.
nnoremap <leader>ts :!

" For opening stuff faster.
nnoremap <leader>ne :e<space>
nnoremap <leader>te :tabe<space>
nnoremap <leader>vs :vsp<space>

" For quitting stuff faster.
nnoremap <leader>qq :q<CR>
nnoremap <leader>qn :q!<CR>
nnoremap <leader>qa :qa<CR>
nnoremap <leader>qt :qa!<CR>

" For saving stuff faster.
nnoremap <leader>ww :w<CR>
nnoremap <leader>wa :wa<CR>
nnoremap <leader>wq :wq<CR>

" For turning off automatic wrapping in current buffer
nnoremap <leader>tw :set textwidth=0<CR>

" For use with vim-go
nnoremap <leader>lb :GoBuild<CR>
nnoremap <leader>lr :GoRun<CR>
nnoremap <leader>li :GoInstall<CR>
nnoremap <leader>lf :GoFmt<CR>

" Shortcuts for formatting code using ClangFormat
nnoremap <leader>fm :ClangFormat<CR>

" Make it so that I don't have to press the colon key.
" nnoremap <CR> :

" Easy escape.
" inoremap ii <Esc>

" For activating C++ completion thing.
inoremap <C-Z> <C-X><C-O>





" Neomake stuff
let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_maker = {
   \ 'exe': 'clang++',
   \ 'args': ['-Wall', '-Wextra', '-std=gnu++11'],
   \ }
let g:neomake_c_enabled_makers = ['clang']
let g:neomake_c_clang_maker = {
   \ 'exe': 'clang',
   \ 'args': ['-Wall', '-Wextra', '-std=gnu11'],
   \ }
" let g:neomake_python_flake8_maker = {
"    \ 'exe': 'flake8',
"    \ }
" let g:neomake_cpp_enabled_makers = ['clang']
" let g:neomake_cpp_clang_maker = {
"    \ 'exe': 'clang++',
"    \ 'args': ['-Wall', '-Wextra', '-Weverything', '-Wno-sign-conversion', '-std=gnu++11'],
"    \ }

autocmd! BufWritePost * Neomake





" Open tagbar in these files to see an outline. I used to include C and C++ here
" but turned those off because I almost always have a split window with those
" types for headers.
autocmd FileType go TagbarOpen
" autocmd FileType c TagbarOpen
" autocmd FileType cpp TagbarOpen
autocmd FileType python TagbarOpen
autocmd FileType lisp TagbarOpen





" Neocomplete stuff
"
"Note: This option must be set in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
" let g:neocomplete#sources#syntax#min_keyword_length = 3

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
        \ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  "return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? "\<C-y>" : "\<Space>"

" AutoComplPop like behavior.
"let g:neocomplete#enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplete#enable_auto_select = 1
"let g:neocomplete#disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<C-x>\<C-u>"









" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
"let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

" For perlomni.vim setting.
" https://github.com/c9s/perlomni.vim
let g:neocomplete#sources#omni#input_patterns.perl = '\h\w*->\h\w*\|\h\w*::'
" Python stuff

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
  "project_base_dir = os.environ['VIRTUAL_ENV']
  "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  "execfile(activate_this, dict(__file__=activate_this))
"EOF









" For syntastic.
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic python settings.
"
" Use flake8 for checking, pylint makes me write docstrings.
let g:syntastic_python_checkers = ['python', 'flake8']

" let g:syntastic_cpp_checkers = ['clang_check', 'gcc']
" let g:syntastic_cpp_checkers = ['gcc']
" let g:syntastic_cpp_clang_check_args = "-std=gnu++11"
" let g:syntastic_cpp_compiler = 'clang++'
" let g:syntastic_cpp_compiler_options = '-std=c++11'
" let g:syntastic_cpp_gcc_args = "-std=c++11"
let g:syntastic_mode_map = { 'passive_filetypes': ['cpp', 'c'] }

" For rust syntax checking.
let g:syntastic_rust_checkers = ['rustc']

let g:clang_c_options = '-std=gnu11'
let g:clang_cpp_options = '-std=gnu++11 -pthread -I/usr/include/gtkmm-3.0 -I/usr/lib64/gtkmm-3.0/include -I/usr/include/atkmm-1.6 -I/usr/include/gtk-3.0/unix-print -I/usr/include/gdkmm-3.0 -I/usr/lib64/gdkmm-3.0/include -I/usr/include/giomm-2.4 -I/usr/lib64/giomm-2.4/include -I/usr/include/pangomm-1.4 -I/usr/lib64/pangomm-1.4/include -I/usr/include/glibmm-2.4 -I/usr/lib64/glibmm-2.4/include -I/usr/include/gtk-3.0 -I/usr/include/at-spi2-atk/2.0 -I/usr/include/at-spi-2.0 -I/usr/include/dbus-1.0 -I/usr/lib64/dbus-1.0/include -I/usr/include/gtk-3.0 -I/usr/include/gio-unix-2.0/ -I/usr/include/cairo -I/usr/include/pango-1.0 -I/usr/include/harfbuzz -I/usr/include/pango-1.0 -I/usr/include/atk-1.0 -I/usr/include/cairo -I/usr/include/cairomm-1.0 -I/usr/lib64/cairomm-1.0/include -I/usr/include/cairo -I/usr/include/pixman-1 -I/usr/include/freetype2 -I/usr/include/libdrm -I/usr/include/sigc++-2.0 -I/usr/lib64/sigc++-2.0/include -I/usr/include/gdk-pixbuf-2.0 -I/usr/include/libpng16 -I/usr/include/glib-2.0 -I/usr/lib64/glib-2.0/include'





" Snippets settings

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<c-e>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Create new snippets in the directory I want and not in the current directory,
" which I think is really dumb.

let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']















" Filetype specific stuff

" Set shiftwidth to 72 in git commits.
au FileType gitcommit set tw=72

" Set settings for C files if you want the GNU style.
"function GnuStyle()
	"au FileType c setlocal cindent
	"au FileType c setlocal cinoptions=>4,n-2,{2,^-2,:2,=2,g0,h2,p5,t0,+2,(0,u0,w1,m1
	"au FileType c setlocal shiftwidth=2
	"au FileType c setlocal softtabstop=2
	"au FileType c setlocal textwidth=79
	"au FileType c setlocal fo=cqt
	""au FileType c setlocal fo-=r
	""au FileType c setlocal fo-=o
	""au FileType c setlocal fo-=l
	""au FileType c setlocal fo+=cqt
"endfunction

"function BsdStyle()
	"au FileType c setlocal cindent
	"au FileType c setlocal cinoptions=>8:0=8+4t0(4

	"au FileType c setlocal formatoptions=cqtr
	"au FileType c setlocal tabstop=8
	"au FileType c setlocal softtabstop=8
	"au FileType c setlocal shiftwidth=4
	"au FileType c setlocal textwidth=79
	"au FileType c setlocal smarttab
"endfunction
