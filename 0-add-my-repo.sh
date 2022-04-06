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

if systemd-detect-virt; then
    echo 'xrandr --output Virtual-1 --primary --mode 1920x1080 --rotate normal' | sudo tee --append /usr/share/sddm/scripts/Xsetup
else
    echo "not virt"
fi