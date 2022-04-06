#!/usr/bin/env bash

# clone dotfiles and stow
git -C /home/$USER clone https://github.com/M-Mabrouk1/Dotfiles
cd /home/$USER/Dotfiles
stow .

# rm zsh plugins so they can be downloaded
rm -rf /home/$USER/Dotfiles/.config/zsh/plugins/*

mkdir -p /home/$USER/.config/zhistory
touch /home/$USER/.config/zhistory/.zhistory

#install neovim
sudo pacman -S --noconfirm --needed neovim
# add nvim plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'