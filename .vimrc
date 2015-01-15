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
set clipboard=unnamedplus

let NERDTreeWinSize=20
let NERDTreeShowHidden=1

map ; :
map <C-n> :NERDTree<CR>


autocmd BufNewFile,BufReadPost *.md set filetype=text
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
