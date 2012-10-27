call pathogen#infect()
syntax on

set tabstop=4       " a tab is 4 spaces
set expandtab       " convert tabs to spaces
set softtabstop=4
set shiftwidth=4
set number
set mouse=a

" Searching
"set incsearch       " do incremental search
"set showmatch       " show matching brace
set hlsearch        " highlight the results

"set guifont=Envy\ Code\ R:h14

filetype plugin indent on
set t_Co=256
autocmd FileType python set ft=python.django " For SnipMate
autocmd FileType html set ft=htmldjango.html " For SnipMate
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
inoremap <C-space> <C-x><C-o>
colorscheme molokai
let g:molokai_original = 1 " a customization for the molokai scheme

" My favorite colorschemes are
" desert256
" molokai
" devbox-dark-256
" 256-grayvim
" mrkn256
" wombat256
"
" other settings:
" set termencoding=utf-8
" set encoding=utf-8
" set fileencodings=utf-8,cp1251
