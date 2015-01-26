#!/bin/bash

rm -rf bundle/vim-surround
rm -rf bundle/vim-commentary
rm -rf bundle/nerdtree
rm -rf bundle/emmet-vim
rm -rf bundle/vim-kolor
rm -rf bundle/tabular
rm -rf bundle/vim-rails

git clone https://github.com/tpope/vim-surround bundle/vim-surround
git clone https://github.com/tpope/vim-commentary bundle/vim-commentary
git clone https://github.com/scrooloose/nerdtree bundle/nerdtree
git clone https://github.com/mattn/emmet-vim bundle/emmet-vim
git clone https://github.com/zeis/vim-kolor bundle/vim-kolor
git clone git://github.com/godlygeek/tabular.git bundle/tabular
git clone git://github.com/tpope/vim-rails.git
