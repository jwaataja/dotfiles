set runtimepath+=~/.vim,~/.vim/after
set packpath+=~/.vim
filetype off                  " required

call plug#begin('~/.local/share/nvim/plugged')

" Colors
Plug 'altercation/vim-colors-solarized'
" This should be a better version of the above solarized plugin that works
" without any annoying terminal configuration (why should I ever have to
" configure the colors of my terminal for my vim plugin to work correctly?)
" Plug 'ericbn/vim-solarized'
Plug 'lifepillar/vim-solarized8'
Plug 'morhetz/gruvbox'
Plug 'vim-scripts/candycode.vim'
Plug 'w0ng/vim-hybrid'
Plug 'kristijanhusak/vim-hybrid-material'
Plug 'crusoexia/vim-dracula'
Plug 'tomasr/molokai'
Plug 'romainl/Apprentice'
Plug 'nanotech/jellybeans.vim'
Plug 'sjl/badwolf'
Plug 'junegunn/seoul256.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'crusoexia/vim-monokai'
Plug 'cormacrelf/vim-colors-github'
Plug 'tomasiser/vim-code-dark'
Plug 'kaicataldo/material.vim'
Plug 'mhartington/oceanic-next'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'gosukiwi/vim-atom-dark'
Plug 'ghifarit53/tokyonight-vim'

" A status line.
" Plug 'vim-airline/vim-airline'
" Plug 'powerline/powerline'

" Syntax checking, mainly for Python.
" Plug 'vim-syntastic/syntastic'
" Plug 'neomake/neomake'

" Mainly for haskell formatting with Brittany
Plug 'sbdchd/neoformat'

" For asynchronous linting, etc.
Plug 'w0rp/ale'

"Syntax highlighting
"For C, choose one of these.
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'justinmk/vim-syntax-extra'
Plug 'jaxbot/semantic-highlight.vim'
" For C++
Plug 'bfrg/vim-cpp-modern'

" For git and compiling.
Plug 'tpope/vim-fugitive'
" Plug 'idanarye/vim-merginal'
Plug 'tpope/vim-dispatch'
" Make working with CMake easier.
Plug 'vhdirk/vim-cmake'

" ctags
Plug 'xolox/vim-misc'
" Plug 'xolox/vim-easytags'

" Plug 'roman/golden-ratio'

" For easy comment management.
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'

" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Completion for programming in various languages.
" Plug 'Valloric/YouCompleteMe'
" Plug 'justmao945/vim-clang'
" Plug 'Shougo/neocomplete.vim'
" Plug 'Rip-Rip/clang_complete'
Plug 'deoplete-plugins/deoplete-clang'
Plug 'Shougo/neoinclude.vim'
" Plug 'davidhalter/jedi-vim'
Plug 'zchee/deoplete-jedi'

" Coc.nvim
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" For Python programming.
Plug 'nvie/vim-flake8'
Plug 'hynek/vim-python-pep8-indent'
Plug 'tell-k/vim-autopep8'

" Go Programming
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'zchee/deoplete-go', { 'do': 'make'}

" Ruby Programming
" I'm not sure if I'm supposed to have both installed.
Plug 'vim-ruby/vim-ruby'
Plug 'fishbullet/deoplete-ruby'
Plug 'tpope/vim-rails'

" Rust Programming
Plug 'rust-lang/rust.vim'
" Plug 'racer-rust/vim-racer'
Plug 'sebastianmarkow/deoplete-rust'

" Haskell Programming
Plug 'neovimhaskell/haskell-vim'
" Formatting
" Plug 'sdiehl/vim-ormolu'
" Indentation
Plug 'alx741/vim-hindent'

" Java programming
" Plug 'artur-shaik/vim-javacomplete2'

" For formatting code
Plug 'rhysd/vim-clang-format'
Plug 'Chiel92/vim-autoformat'

" For C# programming
Plug 'OmniSharp/omnisharp-vim'

" For writing HTML.
Plug 'arunsahadeo/webval'

" Javascript
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" LaTeX
Plug 'vim-latex/vim-latex'

" Meson build system support
Plug 'igankevich/mesonic'

" Snippets.
Plug 'SirVer/ultisnips'
" Extra snippets
Plug 'honza/vim-snippets'

" Fuzzy finding.
Plug 'ctrlpvim/ctrlp.vim'

" Use ripgrep in vim
Plug 'jremmen/vim-ripgrep'

" For taking notes and stuff.
Plug 'vimoutliner/vimoutliner'

" Tagbar for C, C++, and Go.
Plug 'majutsushi/tagbar'

" Physics based scrolling
" Plug 'yuttie/comfortable-motion.vim'

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
" Make exrc secure by disabling features
set secure

" Set the current directory to the file automatically.
set autochdir

" For airline for some reason
set laststatus=2

" For mouse.
set mouse=a

" To make searching ignore case unless a non-lower case letter is searched for,
" like emacs.
set ignorecase
set smartcase


" Wrap columns at 80 by default, disable this on a filetype basis.
set textwidth=80

" Highlight the 80th column so it is not crossed.
set colorcolumn=80

" For making tab completion better
set switchbuf=useopen,usetab

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
" This version is solarized friendly
" set listchars=tab:▸\ ,trail:~,extends:<,precedes:>,eol:¬

set list


" Netrw
" " Make the window smaller.
" let g:netrw_winsize = 25

" " Tree listing by default
" let g:netrw_liststyle = 3

" Give more information in directory browser
let g:netrw_liststyle = 1


" For truecolor support.
set termguicolors

" " Enable italics in terminal.
let g:gruvbox_italic=1
" " Get rid ot that annoying bold gruvbox stuff.
" let g:gruvbox_bold=0
" " Other gruvbox stuff.
" Set the contrast to be lower.
" let g:gruvbox_contrast_dark = "soft"
" let g:gruvbox_contrast_dark = "medium"
" let g:gruvbox_contrast_light = "soft"
" let g:gruvbox_termcolors=16

" Settings for Tokyo Night colorscheme, requires termguicolors
" let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_style = 'storm' " available: night, storm
let g:tokyonight_enable_italic = 1
let g:tokyonight_disable_italic_comment = 1

" Highlight trailing whitespace.
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
" Show trailing whitespace and spaces before a tab:
"match ExtraWhitespace /\s\+$\| \+\ze\t/
" Show trailing whitespace except when typing at the end of a line.
match ExtraWhitespace /\s\+\%#\@<!$\| \+\ze\t/

" Colors
" set background=dark

" 0
" colorscheme default
" 4
" colorscheme apprentice
" 5
" colorscheme hybrid
" 3
" colorscheme github
" 4
" colorscheme jellybeans
" This is the sublime theme
" 4
" colorscheme monokai
" 5 - This is what VSCode uses
" colorscheme codedark
" 5
" colorscheme badwolf
" 6
" colorscheme seoul256
" 5
" colorscheme nord
" 7
" colorscheme hybrid_material
" 6
" colorscheme material
" 8
" colorscheme solarized8
" 8
" colorscheme solarized
" 10
colorscheme gruvbox
" This is Atom's default dark theme
" 5
" colorscheme atom-dark
" This is a different atom theme. This and the one after are basically the same
" except this one has a light blue where the next has a red. This first one also
" highlights more things purple it seems (in Rust, in C++ the other highlights
" more purple.
" 7
let g:onedark_termcolors=256
" colorscheme onedark
" Yet another one from atom
" 6
" colorscheme one
" 7
" colorscheme tokyonight


" Fonts
" set guifont=DejaVu\ Sans\ Mono\ 11
" set guifont=Source\ Code\ Pro\ 10
" set guifont=Inconsolata\ 11
set guifont=Fira\ Code\ 10

" Use this font for Windows. It might not work on other systems, though.
" set guifont=Source_Code_Pro:h11:cANSI:qDRAFT

" This makes LaTeX do spell checking on the whole document
syntax sync fromstart





" Specially defined and custom functions.

" Splits the current query so that it matches based on tokens.
function! SplitSearch()
    let query = join(split(@/), '\_s\+')
    let @/ = query
endfunction

" Sets the current indentation settings to given amount.
function! SetIndentation(count)
    let &shiftwidth = a:count
    let &tabstop = a:count
    let &softtabstop = a:count
endfunction

" Toggles between using four and two spaces for indentation. If neither is
" currently in use, sets it to four.
function! ToggleIndentation()
    if &shiftwidth == 4
        call SetIndentation(2)
    else
        call SetIndentation(4)
    endif
endfunction

" Toggles between using 80 and 100 as the textwidth. If neither is currently in
" use, sets it to 80
function! ToggleTextWidth()
    if &textwidth == 80
        set textwidth=100
        set colorcolumn=100
    else
        set textwidth=80
        set colorcolumn=80
    endif
endfunction





" Key bindings and whatnot.

let mapleader=","

nnoremap <leader>pd i@PolyDet <esc>

" Edit configuration faster.
nnoremap <leader>ev :vsplit ~/.nvimrc<cr>
nnoremap <leader>sv :source ~/.nvimrc<cr>

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

" Toggle indentation between 2 and 4 spaces
nnoremap <leader>ti :call ToggleIndentation()<cr>

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

" For working with diffs
nnoremap <leader>du :diffupdate<CR>
nnoremap <leader>dp :diffput<CR>
nnoremap <leader>dg2 :diffget //2<CR>
nnoremap <leader>dg3 :diffget //3<CR>

" Shortcuts for working with ctags and ctrlp.
nnoremap <leader>pt :CtrlPTag<CR>
" Doesn't match what you would expect (ts) because of other binding. The space
" at the end is intentional
nnoremap <leader>tl :tselect 

" Shortcuts for formatting code using ClangFormat
nnoremap <leader>fm :ClangFormat<CR>

" For activating C++ completion thing.
" inoremap <C-Z> <C-X><C-O>
" inoremap <C-Space> <C-x><C-o>
" inoremap <C-@> <C-Space>

" Make it so that I don't have to press the colon key.
" nnoremap <CR> :

" Easy escape.
" inoremap ii <Esc>

" Make it so that double tapping the '/' character converts the search.
nnoremap <silent> <c-s> :call SplitSearch()<cr>n

" Toggle between two and four spaces, mostly for Java.
nnoremap <silent> <leader>ti :call ToggleIndentation()<cr>

" Toggle between 80 and 100 spaces.
nnoremap <silent> <leader>tt :call ToggleTextWidth()<cr>

" Run ctags in the current directory. The second return exits the prompt.
nnoremap <leader>ct :!ctags -R .<cr><cr>

" Delete all trailing whitespace in the current file. Stands for "delete
" trailing whitespace".
" TODO: "g" necessary here?
nnoremap <leader>dt :%s/\s\+$//g<cr>``

" ALE mappings for navigating code, etc.
nnoremap <leader>agd :ALEGoToDefinition<cr>
nnoremap <leader>agv :ALEGoToDefinition -vsplit<cr>
nnoremap <leader>agt :ALEGoToDefinition -tab<cr>
nnoremap <leader>atd :ALEGoToTypeDefinition<cr>
nnoremap <leader>atv :ALEGoToTypeDefinition -vsplit<cr>
nnoremap <leader>att :ALEGoToTypeDefinition -tab<cr>
nnoremap <leader>af :ALEFix<cr>




" ctrlp settings
let g:ctrlp_extensions = ['tag']
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40




" Neomake stuff
" autocmd! BufWritePost * Neomake
let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_maker = {
   \ 'exe': 'clang++',
   \ 'args': ['-Wall', '-Wextra', '-std=gnu++11',
   \'`pkg-config --cflags libxml++-3.0`'],
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
let g:neomake_java_enabled_makers = []


" Completion
let g:deoplete#enable_at_startup = 1
" let g:deoplete#ignore_sources = {}
" let g:deoplete#ignore_sources._ = ['buffer', 'around']
" If we want to exclude ale in C++.
" call deoplete#custom#option('ignore_sources', {'_': ['buffer', 'around'], 'c': ['ale'], 'cpp': ['ale']})
call deoplete#custom#option('ignore_sources', {'c': ['ale'], 'cpp': ['ale']})

" Without this, completion from tags may not work, see https://github.com/Shougo/deoplete.nvim/issues/309
let deoplete#tag#cache_limit_size = 5000000
" call deoplete#custom#option('ignore_sources', {'_': ['buffer', 'around']})
" let g:deoplete#sources = {}
" let g:deoplete#sources.cs = ['omni', 'file', 'buffer', 'ultisnips']
" call deoplete#custom#option('sources', {
"             \ 'cs': ['cs', 'ultisnips', 'file', 'buffer'],
"             \ 'c': ['clang', 'ultisnips'],
"             \ 'cpp': ['clang', 'ultisnips'],
"             \})
" This version includes ale.
" call deoplete#custom#option('sources', {
"             \ '_': ['ale'],
"             \ 'cs': ['cs', 'ultisnips', 'file', 'buffer'],
"             \})
" call deoplete#custom#option('omni_patterns', {
"             \ 'cs': '\w*',
"             \})
" Make it so that deoplete starts completing after one character typed, rather
" than two.
" call deoplete#custom#option('min_pattern_length', 1)
" For C#, call the omnicompletion when this pattern is matched.
" call deoplete#custom#option('omni_patterns', {
"             \ 'cs': ['[^. *\t]\.\w*', '[a-zA-Z]\w*'],
"             \})
" if !exists('g:deoplete#omni#input_patterns')
"   let g:deoplete#omni#input_patterns = {}
" endif
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
    autocmd FileType xml let g:deoplete#disable_auto_complete = 1
    autocmd FileType java setlocal omnifunc=javacomplete#Complete
    autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
augroup end
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Ale settings
" Let ale search in 'build' directories for compile_commands.json.
let g:ale_c_parse_compile_commands=1

" Display linter name with error message.
let g:ale_echo_msg_format = '[%linter%] %s'

" Use the c++ filetype for .h files and use the C++20 standard
let g:ale_c_clang_options = '-x c++ -std=c++2a'
let g:ale_c_clangd_options = '-x c++ -std=c++2a'
let g:ale_cpp_clangtidy_options = '-x c++ -std=c++2a'



" clang_complete
" path to directory where library can be found
" let g:clang_library_path='/usr/lib/llvm/7/lib64'
" or path directly to the library file
" let g:clang_library_path='/usr/lib64/libclang.so.3.8'

" vim-clang
" Sets the location for compile_commads.json.
" let g:clang_compilation_database = './build'

" deoplete-clang
let g:deoplete#sources#clang#libclang_path='/usr/lib/llvm/10/lib64/libclang.so'
let g:deoplete#sources#clang#clang_header='/usr/lib/clang'

" Turn on the ch extended c mode for .h files instead of c or c++. Used C++ by
" default.
" let ch_syntax_for_h = 1
let g:c_syntax_for_h = 1
" let c_syntax_for_h = 1

" Rust
let g:rustfmt_autosave = 1

" If using deoplete-rust
let g:deoplete#sources#rust#racer_binary='/home/jason/.cargo/bin/racer'
let g:deoplete#sources#rust#rust_source_path='/home/jason/.rustup/toolchains/nightly-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'
" Don't know if I actually want this.
" let g:deoplete#sources#rust#show_duplicates=1

" If using vim-racer
" let g:racer_cmd = "/home/jason/.cargo/bin/racer"
let g:racer_experimental_completer = 1

" Java related settings
" Disable automatic formatting in Java.
au FileType java let g:clang_format#auto_format = 0
" au FileType java ALEDisable

" let g:deoplete#sources#rust#racer_binary = '/home/jason/.cargo/bin/racer'
" let g:deoplete#sources#rust#rust_source_path = '/home/jason/git/rust/src'

" LaTeX
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
" Use zathura by default
let g:Tex_ViewRule_pdf='zathura'


" Python stuff

" autocmd BufWrite *.py Autopep8
let g:autopep8_disable_show_diff=1

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
  "project_base_dir = os.environ['VIRTUAL_ENV']
  "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  "execfile(activate_this, dict(__file__=activate_this))
"EOF


" C++ Programming

" Automatically format files with clang-format on save. Warning, this includes
" Java.
let g:clang_format#auto_format = 1

" C# programming
let g:OmniSharp_server_stdio = 1
" Use installed mono instead of bundled version
let g:OmniSharp_server_use_mono = 1


" Haskell programming
" let g:ormolu_disable=1
" nnoremap hf :call RunOrmolu()<CR>

" Enable more highlighting in Haskell
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords
" g:haskell_classic_highlighting = 1


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
