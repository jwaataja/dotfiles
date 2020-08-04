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

" Syntax highlighting
" For C, choose one of these.
" Plug 'octol/vim-cpp-enhanced-highlight'
" Plug 'justinmk/vim-syntax-extra'
" Plug 'jaxbot/semantic-highlight.vim'
" For C++
Plug 'bfrg/vim-cpp-modern'

" Syntax highlighting for jsonc
Plug 'kevinoid/vim-jsonc'

" For git and compiling.
Plug 'tpope/vim-fugitive'
Plug 'idanarye/vim-merginal'
Plug 'tpope/vim-dispatch'
" Make working with CMake easier.
Plug 'vhdirk/vim-cmake'

" For easy comment management.
Plug 'scrooloose/nerdcommenter'

" Plug 'Shougo/neoinclude.vim'

" Coc.nvim
" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Extra completion sources

" For Python programming.
Plug 'nvie/vim-flake8'
Plug 'hynek/vim-python-pep8-indent'
Plug 'tell-k/vim-autopep8'

" Go Programming
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'zchee/deoplete-go', { 'do': 'make'}

" Ruby Programming
" I'm not sure if I'm supposed to have both installed.
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'

" Rust Programming
Plug 'rust-lang/rust.vim'

" Haskell Programming
Plug 'neovimhaskell/haskell-vim'
" Formatting
" Plug 'sdiehl/vim-ormolu'
" Indentation
Plug 'alx741/vim-hindent'

" For formatting code
Plug 'rhysd/vim-clang-format'

" For C# programming
Plug 'OmniSharp/omnisharp-vim'

" For writing HTML.
" HTML and CSS validation
Plug 'arunsahadeo/webval'

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

" " Physics based scrolling
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

" Normally, scrolling occurs when the cursor reaches the top or bottom of the
" screen. Instead, scroll when five lines from the top or bottom so that the
" surrounding lines are always visible.
set scrolloff=5

" Enable external vimrcs for specific projects.
set exrc
" Make exrc secure by disabling features
set secure

" Set the current directory to the file automatically. This makes opening files
" similar to emacs, where if you open a relative path it will search the
" directory of the current file.
set autochdir

" For airline for some reason
set laststatus=2

" For mouse.
set mouse=a

" Make searching ignore case unless a non-lower case letter is searched for,
" like emacs.
set ignorecase
set smartcase


" Wrap columns at 80 by default, disable this on a filetype basis.
set textwidth=80

" Highlight the 80th column so it is not crossed.
set colorcolumn=80

" For making tab completion better
set switchbuf=useopen,usetab

" " Disables autocommenting.
" autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
"set formatoptions-=cro
"
" set formatoptions-=c
" set formatoptions-=r
" set formatoptions-=o

" Display tabs with a width of 4.
set tabstop=4
set shiftwidth=4

" Display whitespace characters using special symbols.
" set listchars=eol:$,tab:»-,trail:~,extends:<,precedes:>,space:·
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
" " Get rid of that annoying bold gruvbox stuff.
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

" Correct highlighting for comments in jsonc
autocmd FileType json syntax match Comment +\/\/.\+$+

" Colors
" Many colorschemes use this setting, such as solarized and gruvbox.
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

let mapleader = ","

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

" Insert matching curly braces.
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
" Doesn't match what you would expect (ts) because of other binding.
nnoremap <leader>tl :tselect<space>

" Shortcuts for formatting code using ClangFormat
nnoremap <leader>cfm :ClangFormat<CR>

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





" ctrlp settings
let g:ctrlp_extensions = ['tag']
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40




" NERDCommenter settings

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1





" Coc.nvim

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Close the preview window when completion is done.
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Show list of available actions. This does all sorts of useful things like show
" available fixes, allow renaming, add an import, etc.
nnoremap <leader>aa :CocAction<cr>


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')





" Turn on the ch extended c mode for .h files instead of c or c++. Used C++ by
" default.
" let ch_syntax_for_h = 1
" let g:c_syntax_for_h = 1
" let c_syntax_for_h = 1

" Rust
" Automatically format rust code on save.
let g:rustfmt_autosave = 1

" Java related settings
" Disable automatic formatting in Java from clang-format.
au FileType java let g:clang_format#auto_format = 0

" LaTeX
" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
" Use zathura as pdf viewer by default.
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
