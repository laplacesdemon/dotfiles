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

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

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
