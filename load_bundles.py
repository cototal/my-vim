import os
import subprocess

bundles = [
    ["tpope/vim-surround", "vim-surround"],
    ["tpope/vim-commentary", "vim-commentary"],
    ["scrooloose/nerdtree", "nerdtree"],
    ["mattn/emmet-vim", "emmet-vim"],
    ["godlygeek/tabular", "tabular"],
    ["tpope/vim-abolish", "vim-abolish"],
    ["slim-template/vim-slim", "vim-slim"],
    ["jlanzarotta/bufexplorer", "bufexplorer"],
    ["tpope/vim-endwise", "vim-endwise"],
    ["AlessandroYorba/Sierra", "Sierra"],
]

pack_dir = "pack/bundle/start/"

for repo, folder in bundles:
    folder_path = os.path.join(pack_dir, folder)
    if not os.path.exists(folder_path):
        subprocess.run(["git", "clone", f"https://github.com/{repo}", folder_path])
