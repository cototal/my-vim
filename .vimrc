execute pathogen#infect()
syntax on
filetype plugin indent on

set number
set shortmess=at
set incsearch
set hlsearch
set gdefault
set backspace=indent,eol,start
set autoindent
set smartindent "Should figure out where your tab needs to jump to
set shiftround
set shiftwidth=2
set softtabstop=2
set expandtab
set clipboard=unnamedplus
set dir=~/tmp
set wildmenu
set showcmd

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

function! InsertTabWrapper()
  " Get current column of cursor
  let col = col(".") - 1
  if !col || getline(".")[col -1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-n>"
endfunction

" Using <c-r>= to get the expression register from insert mode
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-p>
