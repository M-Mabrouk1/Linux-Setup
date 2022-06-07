#!/usr/bin/env bash

#create directories to clean home dir
mkdir -p /home/$USER/.local/share/Xauthority
mkdir -p /home/$USER/.local/state/bash
mkdir -p /home/$USER/.local/share/zlua

# essentials
sudo pacman -S --noconfirm --needed wget
sudo pacman -S --noconfirm --needed curl
sudo pacman -S --noconfirm --needed git
sudo pacman -S --noconfirm --needed stow
sudo pacman -S --noconfirm --needed zsh

# add my repo
echo '
[mabrouk_repo]
SigLevel = Optional TrustedOnly
Server = https://m-mabrouk1.github.io/$repo/$arch' | sudo tee --append /etc/pacman.conf

sudo pacman -Sy

#install neovim
sudo pacman -S --noconfirm --needed neovim
# add nvim plugins
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'