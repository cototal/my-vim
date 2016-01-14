execute pathogen#infect()
syntax on
filetype plugin indent on

" Set $ENV
if filereadable("env.vim")
  source env.vim
endif

if $ENV == 'DOS3710'
  set dir=$VIM/tmp
  set backupdir=$VIM/tmp/backups
  set viminfo+=n$VIM/_viminfo
else
  set dir=~/tmp
  set backupdir=~/tmp/backups
  set viminfo+=n~/_viminfo
endif


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
set clipboard=unnamed

set wildmenu
set showcmd

let NERDTreeWinSize = 20
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 0

let mapleader=","
nnoremap <leader><space> :noh<cr>

map ; :
map <C-n> :NERDTree<CR>
map <C-b> :BufExplorer<CR>

vnoremap // y/<C-R>"<CR>
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

colorscheme kolor
set guifont=Source\ Code\ Pro:h11
