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
set dir=~/tmp

let NERDTreeWinSize=20
let NERDTreeShowHidden=1

let mapleader=","
nnoremap <leader><space> :noh<cr>

map ; :
map <C-n> :NERDTree<CR>

imap <C-e> <CR>end<Esc>ko

vnoremap // y/<C-R>"<CR>

let @r=':%s/:\(\w\+\) =>/\1:/g'

autocmd BufNewFile,BufReadPost *.md set filetype=text
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
