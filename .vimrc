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

" Often fails with # sign
"set smartindent

set shiftround
set shiftwidth=2
set softtabstop=2
set expandtab
set clipboard=unnamed

set dir=~/tmp
set wildmenu
set showcmd

let NERDTreeWinSize = 20
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

let mapleader=","
nnoremap <leader><space> :noh<cr>

map ; :
map <C-n> :NERDTree<CR>
map <C-b> :BufExplorer<CR>

imap <C-e> <CR>end<Esc>ko
imap <C-c> <Nop>

" Until I stop hitting C-p when trying to hit C-[
imap <C-p> <Nop>


" Copy and paste
vmap <C-y> :w! ~/tmp/clipboard<CR>
nmap <C-p> :read !cat ~/tmp/clipboard<CR>

vnoremap // y/<C-R>"<CR>

let @r=':%s/:\(\w\+\) =>/\1:/'

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd BufRead,BufNewFile *.hbs set filetype=html
autocmd BufNewFile,BufReadPost *.md set filetype=text
autocmd Filetype text setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd Filetype javascript setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd Filetype typescript setlocal tabstop=4 softtabstop=4 shiftwidth=4
autocmd Filetype cs setlocal tabstop=4 softtabstop=4 shiftwidth=4

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

imap <C-k> <Plug>snipMateNextOrTrigger
smap <C-k> <Plug>snipMateNextOrTrigger
imap <C-j> <Plug>snipMateBack
smap <C-j> <Plug>snipMateBack
