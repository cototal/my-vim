" Windows Standard Config:
set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin

set diffexpr=MyDiff()
function MyDiff()
  let opt = '-a --binary '
  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  let arg1 = v:fname_in
  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  let arg2 = v:fname_new
  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  let arg3 = v:fname_out
  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  let eq = ''
  if $VIMRUNTIME =~ ' '
    if &sh =~ '\<cmd'
      let cmd = '""' . $VIMRUNTIME . '\diff"'
      let eq = '"'
    else
      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    endif
  else
    let cmd = $VIMRUNTIME . '\diff'
  endif
  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
endfunction

" Windows Custom Config:
set dir=$VIM/tmp
set backupdir=$VIM/tmp/backups
set viminfo+=n$VIM/_viminfo

" Normal vimrc:
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

let NERDTreeWinSize=20
let NERDTreeShowHidden=1

map ; :
map <C-n> :NERDTree<CR>

imap <C-e> <CR>end<Esc>ko

vnoremap // y/<C-R>"<CR>

let @r=':%s/:\(\w\+\) =>/\1:/g
'

autocmd BufNewFile,BufReadPost *.md set filetype=text
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

colorscheme kolor
set guifont=Source\ Code\ Pro:h11
