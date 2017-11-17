execute pathogen#infect()
syntax on
filetype plugin indent on

" Set $ENV
if filereadable($VIM . "env.vim")
  source $VIM/env.vim
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

" Often fails with # sign
"set smartindent

set shiftround
set shiftwidth=4
set softtabstop=4
set expandtab
set clipboard=unnamed

set wildmenu
set showcmd

let NERDTreeWinSize = 20
let NERDTreeShowHidden = 1
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '~'

let mapleader=","
nnoremap <leader><space> :noh<cr>

map ; :
map <C-n> :NERDTree<CR>
map <C-b> :BufExplorer<CR>

vnoremap // y/<C-R>"<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

autocmd BufRead,BufNewFile *.hbs set filetype=html
autocmd BufNewFile,BufReadPost *.md set filetype=text
autocmd BufNewFile,BufReadPost *.es6 set filetype=typescript
autocmd Filetype ruby setlocal tabstop=2 softtabstop=2 shiftwidth=2

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

" Remove extra whitespace (http://vim.wikia.com/wiki/Remove_unwanted_spaces)
nnoremap <silent> <C-f> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>

imap <C-k> <Plug>snipMateNextOrTrigger
smap <C-k> <Plug>snipMateNextOrTrigger
imap <C-j> <Plug>snipMateBack
smap <C-j> <Plug>snipMateBack

function! IPhpExpandClass()
  call PhpExpandClass()
    call feedkeys('a', 'n')
  endfunction
  autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
  autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>
endfunction

" Set $ENV
if filereadable($VIM . "env.vim")
  source $VIM/env.vim
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
