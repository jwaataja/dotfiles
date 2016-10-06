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

Plugin 'tpope/vim-fugitive'

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




syntax on "syntax highlighting

"allows better switching of files
set hidden

set wildmode=longest,list,full
"better command-line completion
set wildmenu

"Show partial commands in the last line of the screen
set showcmd

"show line number
set number

"make line numbers relative
set relativenumber

set cursorline "underlines current line

set incsearch "search as characters are entered
set hlsearch "highlight matches

"cursor can't be on the top or bottom line
set scrolloff=5

" enable external vimrcs for specific projects
set exrc


"to compile if makefile in current directory
noremap <F4> :wa<CR>:make<CR>

"for airline for some reason
set laststatus=2

"inoremap xx <ESC>
inoremap xz <ESC>
inoremap XZ <ESC>

"to toggle relative number, usually during debugging, probably.
noremap <leader>rn :set relativenumber!<CR>

"Insert brackets
inoremap <leader>{ {<enter>}<esc>ko

map <Leader>bg :let &background = ( &background == "dark"? "light" : "dark" )<CR>





"color scheme
"colorscheme hybrid
"colorscheme solarized
colorscheme gruvbox
set background=dark
"colorscheme whiplash

"for mouse
set mouse=a


"disables autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


"tabs
"set expandtab
"set shiftwidth=2
"set softtabstop=2
set tabstop=4
set shiftwidth=4

"fonts
"set guifont=DejaVu\ Sans\ Mono\ 11
set guifont=Source\ Code\ Pro\ 10

"Using zero makes it a maximum of 79, which is what I want.
set textwidth=80

set colorcolumn=80

" For making tab completion better
set switchbuf=useopen,usetab,newtab
