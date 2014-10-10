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
set mousehide
"set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon1              "cursor blinking settings
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set ruler "Always show current position

" ================ Trivial Settings  ===================
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set cursorline

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
"set smartcase       " case insensitive search
set ignorecase


" ================ Turn Off Swap Files ==============

set noswapfile
set nobackup
set nowb


" ================ Color Scheme Settings  ===========

set t_Co=256
set background=dark  
colorscheme molokai
let g:molokai_original = 1 " a customization for the molokai scheme
let g:solarized_termcolors=256

" My favorite colorschemes are
" desert256
" molokai
" devbox-dark-256
" 256-grayvim
" mrkn256
" wombat256
" solomon
" solarized


" ================ Mappings / Shortcuts  ========================
nmap <Tab> <C-w><C-w> 
nmap <S-Tab> :tabnext<CR>
nmap <C-t> :tabnew<cr>
imap <C-t> <ESC>:tabnew<cr> 
nmap 1 $
nmap <leader>' :TagbarToggle<CR>

" switching tabs with CTRL+<movements>
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <c-j> <c-w><Down>
map <c-k> <c-w><Up>
map <c-l> <c-w><Right>
map <c-h> <c-w><Left>

" mapping each tab [0-9] to numbers
map <leader>1 :tabnext 1<CR>
map <leader>2 :tabnext 2<CR>
map <leader>3 :tabnext 3<CR>
map <leader>4 :tabnext 4<CR>
map <leader>5 :tabnext 5<CR>
map <leader>6 :tabnext 6<CR>
map <leader>7 :tabnext 7<CR>
map <leader>8 :tabnext 8<CR>
map <leader>9 :tabnext 9<CR>

" mapping for Rope, see :help RopeKeys
":map <C-c>d :call RopeGotoDefinition()
map <leader>j :RopeGotoDefinition<CR>
map <leader>r :RopeRename<CR>

" other shortcuts
nmap <Leader>q <F5>

" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=0      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=99         "i don't know this actually

" ================ Completion =======================

"set wildmode=list:longest
set wildmode=longest:full
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

set scrolloff=20         "Start scrolling when we're x lines away from margins
set sidescrolloff=15
set sidescroll=1

" other settings:
" set termencoding=utf-8
" set encoding=utf-8
" set fileencodings=utf-8,cp1251


" ================ Python-Mode Settings  =============
" copied from: https://github.com/klen/python-mode
"

" Auto open cwindow if errors be finded
let g:pymode_lint_cwindow = 1
        

" Switch pylint, pyflakes, pep8, mccabe code-checkers
" Can have multiply values pep8,pyflakes,mcccabe 
let g:pymode_lint_checker = "pyflakes,pep8,mccabe"

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

autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate

" Enable python folding
let g:pymode_folding = 1

" Enable python objects and motion
let g:pymode_motion = 1

" Auto fix vim python paths if virtualenv enabled
let g:pymode_virtualenv = 1

" Additional python paths
" let g:pymode_paths = []

" " Load breakpoints plugin
let g:pymode_breakpoint = 1

" " Key for set/unset breakpoint
let g:pymode_breakpoint_key = '<leader>b'

" " Autoremove unused whitespaces
let g:pymode_utils_whitespaces = 1

" " Enable pymode indentation
let g:pymode_indent = 1

" " Set default pymode python options
" let g:pymode_options = 1

" ================ Python-Mode Settings  =============
" Syntax Highlightinh

" Enable pymode's custom syntax highlighting
let g:pymode_syntax = 1

" " Enable all python highlightings
let g:pymode_syntax_all = 1

" " Highlight "print" as function
" let g:pymode_syntax_print_as_function = 0

" " Highlight indentation errors
" let g:pymode_syntax_indent_errors = g:pymode_syntax_all

" " Highlight trailing spaces
" let g:pymode_syntax_space_errors = g:pymode_syntax_all

" " Highlight string formatting
" let g:pymode_syntax_string_formatting = g:pymode_syntax_all

" " Highlight str.format syntax
" let g:pymode_syntax_string_format = g:pymode_syntax_all

" " Highlight string.Template syntax
" let g:pymode_syntax_string_templates = g:pymode_syntax_all

" " Highlight doc-tests
" let g:pymode_syntax_doctests = g:pymode_syntax_all

" " Highlight builtin objects (__doc__, self, etc)
" let g:pymode_syntax_builtin_objs = g:pymode_syntax_all

" " Highlight builtin functions
" let g:pymode_syntax_builtin_funcs = g:pymode_syntax_all

" " Highlight exceptions
" let g:pymode_syntax_highlight_exceptions = g:pymode_syntax_all

" " For fast machines
" let g:pymode_syntax_slow_sync = 0

" ================ NERDTree Settings  ================

" To close window when there is only NERDTree left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr','\.DS_Store','\.ropeproject']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

" Uncomment if you want NERDTree to open automatically when you open vim (with
" a file
"autocmd vimenter * NERDTree

" Mapping for easy access to NERDTree
nmap <C-n> :NERDTreeToggle<CR>
nmap <Leader>n :NERDTreeToggle<CR>

" ================ Omni-Completion Settings  ================
"
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" ================ Virtual Env Settings  ================
" Add the virtualenv's site-packages to vim path
py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF


" =============== Pretty format json -=================
" type the following
" :%!python -m json.tool

" ================ 
