set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
filetype off                  " required

call plug#begin('~/.local/share/nvim/plugged')

" Colors
" Plug 'altercation/vim-colors-solarized'
Plug 'frankier/neovim-colors-solarized-truecolor-only'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/candycode.vim'
Plug 'w0ng/vim-hybrid'
Plug 'crusoexia/vim-dracula'
Plug 'tomasr/molokai'
Plug 'romainl/Apprentice'
Plug 'nanotech/jellybeans.vim'
Plug 'sjl/badwolf'

" A status line.
Plug 'vim-airline/vim-airline'
" Plug 'powerline/powerline'

" Syntax checking, mainly for Python.
" Plug 'vim-syntastic/syntastic'
Plug 'neomake/neomake'

"Syntax highlighting
"For C, choose one of these.
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'justinmk/vim-syntax-extra'
Plug 'jaxbot/semantic-highlight.vim'

" For git and compiling.
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
Plug 'tpope/vim-dispatch'

" Plug 'roman/golden-ratio'

" For easy comment management.
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Completion for programming in various languages.
" Plug 'Valloric/YouCompleteMe'
" Plug 'justmao945/vim-clang'
" Plug 'Shougo/neocomplete.vim'
Plug 'Rip-Rip/clang_complete'
" Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'
Plug 'zchee/deoplete-go', { 'do': 'make'}

" For Python programming.
Plug 'nvie/vim-flake8'
Plug 'hynek/vim-python-pep8-indent'

" Go Programming
Plug 'fatih/vim-go'

" Rust Programming
Plug 'rust-lang/rust.vim'

" For formatting code
Plug 'rhysd/vim-clang-format'

" Snippets.
Plug 'SirVer/ultisnips'
" Extra snippets
Plug 'honza/vim-snippets'

" Fuzzy finding.
Plug 'ctrlpvim/ctrlp.vim'

" For taking notes and stuff.
Plug 'vimoutliner/vimoutliner'

" Tagbar for C, C++, and Go.
Plug 'majutsushi/tagbar'

" Physics based scrolling
Plug 'yuttie/comfortable-motion.vim'

" All of your Plugins must be added before the following line
" call vundle#end()            " required
call plug#end()
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

" Show line numbers.
set number

" Make line numbers relative.
set relativenumber

" Underlines current line.
set cursorline

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

" Disables autocommenting.
"autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"set formatoptions-=cro
"
" set formatoptions-=c
" set formatoptions-=r
" set formatoptions-=o

" Sets tabs to be represented by four spaces to maake reading files easier. This
" doesn't make it so that tabs are spaces, and these settings should be
" overridden in language specific settings such as C.
set tabstop=4
set shiftwidth=4

" Display whitespace chars as certain characters. Delete this stuff if you don't
" want those annoying characters for spaces.
"set listchars=eol:$,tab:»-,trail:~,extends:<,precedes:>,space:·
set listchars=tab:▸\ ,trail:~,extends:<,precedes:>,space:·,eol:¬
set list

let g:rustfmt_autosave = 1





set termguicolors

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
set background=dark
" colorscheme default
" colorscheme hybrid
" colorscheme solarized
colorscheme gruvbox





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

" For activating C++ completion thing.
inoremap <C-Z> <C-X><C-O>
" inoremap <C-Space> <C-x><C-o>
" inoremap <C-@> <C-Space>

" Make it so that I don't have to press the colon key.
" nnoremap <CR> :

" Easy escape.
" inoremap ii <Esc>





" Neomake stuff
autocmd! BufWritePost * Neomake
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





" Completion
let g:deoplete#enable_at_startup = 1
if !exists('g:deoplete#omni#input_patterns')
  let g:deoplete#omni#input_patterns = {}
endif
" This would prevent the screen from cluttering with text.
" let g:deoplete#disable_auto_complete = 1
" Close the preview window when finished.
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
autocmd InsertLeave * if pumvisible() == 0 | pclose | endif
" omnifuncs
augroup omnifuncs
	autocmd!
	autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
	autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
	autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
	" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
	autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"






autocmd FileType go TagbarOpen
" autocmd FileType c TagbarOpen
" autocmd FileType cpp TagbarOpen
autocmd FileType python TagbarOpen
autocmd FileType lisp TagbarOpen














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










" Snippets settings

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
" let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"


" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Create new snippets in the directory I want and not in the current directory,
" which I think is really dumb.

let g:UltiSnipsSnippetDirectories = ['~/.vim/UltiSnips', 'UltiSnips']















" Filetype specific stuff

" Set shiftwidth to 72 in git commits.
au FileType gitcommit set tw=72
