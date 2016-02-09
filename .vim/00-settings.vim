set list
set listchars=tab:»\ ,trail:·,nbsp:⎵,precedes:←,extends:→,conceal:·,eol:¶
set showbreak=↪

set cursorline
set incsearch
set ignorecase
set smartcase
set hlsearch

set undofile
set undolevels=512
if !isdirectory(expand('$HOME').'/.backup/vim/undo')
    call mkdir(expand('$HOME').'/.backup/vim/undo', 'p')
endif
exe 'set undodir='.expand('$HOME').'/.backup/vim/undo'

set hidden
set textwidth=79

set grepprg=grep\ -n\ $@

set completeopt=menuone,longest,preview
set nofoldenable

set background=dark

set tabstop=4
set shiftwidth=4
set expandtab
syntax on
set nocompatible
set backspace=indent,eol,start
set autoindent

""""""""""""""""""""""""""""""
" => Status line
""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2

filetype on
