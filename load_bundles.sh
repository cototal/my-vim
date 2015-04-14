#!/bin/bash

rm -rf bundle/vim-surround
rm -rf bundle/vim-commentary
rm -rf bundle/nerdtree
rm -rf bundle/emmet-vim
rm -rf bundle/vim-kolor
rm -rf bundle/tabular
rm -rf bundle/vim-rails
rm -rf bundle/vim-abolish
rm -rf bundle/vim-jade
rm -rf bundle/vim-slim

git clone https://github.com/tpope/vim-surround bundle/vim-surround
git clone https://github.com/tpope/vim-commentary bundle/vim-commentary
git clone https://github.com/scrooloose/nerdtree bundle/nerdtree
git clone https://github.com/mattn/emmet-vim bundle/emmet-vim
git clone https://github.com/zeis/vim-kolor bundle/vim-kolor
git clone https://github.com/godlygeek/tabular.git bundle/tabular
git clone https://github.com/tpope/vim-rails.git bundle/vim-rails
git clone https://github.com/tpope/vim-abolish.git bundle/vim-abolish
git clone https://github.com/kchmck/vim-coffee-script.git bundle/vim-coffee-script/
git clone git://github.com/digitaltoad/vim-jade.git bundle/vim-jade
git://github.com/slim-template/vim-slim.git bundle/vim-slim
