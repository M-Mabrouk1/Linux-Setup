#!/usr/bin/env bash

# clone dotfiles and stow
git clone https://github.com/M-Mabrouk1/Dotfiles
cd Dotfiles
stow .

# rm zsh plugins so they can be downloaded
rm -rf .config/zsh/plugins/*

#install neovim
sudo pacman -S --noconfirm --needed neovim
# add nvim plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'