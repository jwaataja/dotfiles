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

Plugin 'vim-syntastic/syntastic'

"Syntax highlighting
"For C, choose one of these.
"Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'justinmk/vim-syntax-extra'

" For git and compiling.
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-dispatch'

"Plugin 'roman/golden-ratio'

" For easy comment management.
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'

Plugin 'Valloric/YouCompleteMe'

" For Python programming.
Plugin 'nvie/vim-flake8'
Plugin 'hynek/vim-python-pep8-indent'

" For formatting code
Plugin 'rhysd/vim-clang-format'

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





"Using zero makes it a maximum of 79, which is what I want.
set textwidth=80

set colorcolumn=80

" For making tab completion better
set switchbuf=useopen,usetab,newtab

" This is for Gentoo. YouCompleteMe didn't work without it but other systems
" shouldn't need this.
"let g:ycm_server_python_interpreter="/usr/bin/python2.7"

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
set listchars=tab:▸\ ,trail:~,extends:<,precedes:>,space:·,eol:¬
set list





"set termguicolors

"Enable italics in terminal.
let g:gruvbox_italic=1
"Get rid ot that annoying bold gruvbox stuff.
let g:gruvbox_bold=0
"Other gruvbox stuff.
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
"colorscheme hybrid
"colorscheme solarized
colorscheme gruvbox
set background=dark
"colorscheme whiplash





" Fonts
"set guifont=DejaVu\ Sans\ Mono\ 11
set guifont=Source\ Code\ Pro\ 10

" Use this font for Windows. It might not work on other systems, though.
"set guifont=Source_Code_Pro:h11:cANSI:qDRAFT









" Key bindings and whatnot.

let mapleader=","

" Runs a build process using vim-dispatch.
noremap <F4> :Make<CR>

" These are in case you want to exit insert mode faster.
"inoremap xx <ESC>
"inoremap xz <ESC>
"inoremap XZ <ESC>

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

" For faster executing of shell commands.
nnoremap <leader>ts :!<space>

" For opening stuff faster.
nnoremap <leader>te :tabe<space>
nnoremap <leader>vs :vsp<space>

" For saving stuff faster.
nnoremap <leader>ww :w<CR>
nnoremap <leader>wa :wa<CR>
nnoremap <leader>wq :wq<CR>

" Shortcuts for formatting code using ClangFormat
nnoremap <leader>fm :ClangFormat<CR>

" Make it so that I don't have to press the colon key.
"nnoremap <CR> :

" Easy escape.
inoremap ii <Esc>









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
