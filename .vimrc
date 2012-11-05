" ================ Pathogen Settings =============
" load all the plugins in ~/.vim/bundle

filetype off
call pathogen#infect()
call pathogen#helptags()

" turn syntax highlighting on
syntax on


" ================ general settings ===============

set number
set mouse=a
"set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
"set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim


" ================ Font Settings  ===================

set guifont=Bitstream\ Vera\ Sans\ Mono\ for\ Powerline:h14


" ================ Indentation ======================

set autoindent
set smartindent
set smarttab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
"set list listchars=tab:\ \ ,trail:·

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points


" ================ Searching Settings ===============

set incsearch       " Find the next match as we type the search
"set showmatch       " show matching brace
set hlsearch        " highlight the results
set smartcase       " case insensitive search


" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb


" ================ Color Scheme Settings  ===========

set t_Co=256
colorscheme molokai
let g:molokai_original = 1 " a customization for the molokai scheme

" My favorite colorschemes are
" desert256
" molokai
" devbox-dark-256
" 256-grayvim
" mrkn256
" wombat256
" solomon


" ================ Mappings  ========================
nmap <Tab> <C-w><C-w> 
nmap <S-Tab> :tabnext<CR>
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr> 


" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "i don't know this actually

" ================ Completion =======================

set wildmode=list:longest
set wildmenu                "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif


" ================ Scrolling ========================

set scrolloff=10         "Start scrolling when we're x lines away from margins
set sidescrolloff=15
set sidescroll=1

" other settings:
" set termencoding=utf-8
" set encoding=utf-8
" set fileencodings=utf-8,cp1251


" ================ Python-Mode Settings  =============
"
" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 1
        

" Switch pylint, pyflakes, pep8, mccabe code-checkers
" Can have multiply values pep8,pyflakes,mcccabe 
let g:pymode_lint_checker = "pyflakes,mccabe"

" Skip errors and warnings
" E.g. E501,W002, E2,W (Skip all Warnings and Errors startswith E2) and etc
" let g:pymode_lint_ignore = "E501"

" Select errors and warnings
" E.g. E4,W
" let g:pymode_lint_select = ""

" Run linter on the fly
" let g:pymode_lint_onfly = 0

" Pylint configuration file
" If file not found use 'pylintrc' from python-mode plugin directory
" let g:pymode_lint_config = "$HOME/.pylintrc"

" Check code every save
" let g:pymode_lint_write = 1

" Show error message if cursor placed at the error line
" let g:pymode_lint_message = 1

" Place error signs
" let g:pymode_lint_signs = 1

" Maximum allowed mccabe complexity
" let g:pymode_lint_mccabe_complexity = 8

" Minimal height of pylint error window
" let g:pymode_lint_minheight = 3

" Maximal height of pylint error window
" let g:pymode_lint_maxheight = 6

nmap <Leader>q <F5>

" ================ Python-Mode Settings  =============
"
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate


" ================ NERDTree Settings  ================

" To close window when there is only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Uncomment if you want NERDTree to open automatically when you open vim (with
" a file
"autocmd vimenter * NERDTree

" Mapping for easy access to NERDTree
nmap <C-n> :NERDTreeToggle<CR>
nmap <Leader>n :NERDTreeToggle<CR>
