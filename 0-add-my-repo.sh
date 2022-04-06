#!/usr/bin/env bash
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