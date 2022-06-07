#!/usr/bin/env bash

# clone dotfiles and stow
git -C /home/$USER clone --recurse-submodules https://github.com/M-Mabrouk1/Dotfiles
cd /home/$USER/Dotfiles
stow .

# rm zsh plugins so they can be downloaded
rm -rf /home/$USER/Dotfiles/.config/zsh/plugins/*

mkdir -p /home/$USER/.config/zhistory
touch /home/$USER/.config/zhistory/.zhistory