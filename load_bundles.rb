#!/usr/bin/env ruby

bundles = [
  ["tpope/vim-surround", "vim-surround"],
  ["tpope/vim-commentary", "vim-commentary"],
  ["scrooloose/nerdtree", "nerdtree"],
  ["mattn/emmet-vim", "emmet-vim"],
  ["zeis/vim-kolor", "vim-kolor"],
  ["godlygeek/tabular", "tabular"],
  ["tpope/vim-rails", "vim-rails"],
  ["tpope/vim-abolish", "vim-abolish"],
  ["kchmck/vim-coffee-script", "vim-coffee-script"],
  ["digitaltoad/vim-pug", "vim-pug"],
  ["digitaltoad/vim-jade", "vim-jade"],
  ["slim-template/vim-slim", "vim-slim"],
  ["leafgarland/typescript-vim", "typescript-vim"],
  ["jlanzarotta/bufexplorer", "bufexplorer"],
  ["tpope/vim-endwise", "vim-endwise"],
  ["tomtom/tlib_vim", "tlib_vim"], # snipmate dependency
  ["MarcWeber/vim-addon-mw-utils", "vim-addon-mw-utils"], # snipmate dependency
  ["garbas/vim-snipmate", "vim-snipmate"],
  ["honza/vim-snippets.git", "vim-snippets"], # default snippets
  ["wincent/command-t", "command-t"],
  ["AlessandroYorba/Sierra", "Sierra"]
]

Dir.mkdir "bundle" unless Dir.exist?("bundle")

bundles.each do |bundle|
  next if Dir.exist?("bundle/#{bundle[1]}")

  system "git clone https://github.com/#{bundle[0]} bundle/#{bundle[1]}"
end

unless File.exist?("bundle/command-t/ruby/command-t/ext.so")
  system "rbenv local system"
  Dir.chdir("bundle/command-t/ruby/command-t/ext/command-t")
  system "ruby extconf.rb"
  system "make"
  system "cd ~/.vim"
end
