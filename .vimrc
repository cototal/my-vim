execute pathogen#infect()
syntax on
filetype plugin indent on

set shortmess=at
set incsearch
set hlsearch
set backspace=indent,eol,start
set autoindent
set number
set shiftwidth=2
set softtabstop=2
set expandtab
map ; :

set clipboard=unnamedplus

autocmd BufNewFile,BufReadPost *.md set filetype=text
let NERDTreeWinSize=20
