#!/bin/bash
#set -e

# func_uninstall() {
# 	if pacman -Qi $1 &> /dev/null; then
# 		tput setaf 2
#   		echo "###############################################################################"
#   		echo "################## The package "$1" is already installed"
#       	echo "###############################################################################"
#       	echo
# 		tput sgr0
# 	else
#     	tput setaf 3
#     	echo "###############################################################################"
#     	echo "##################  Installing package "  $1
#     	echo "###############################################################################"
#     	echo
#     	tput sgr0
#     	sudo pacman -S --noconfirm --needed $1
#     fi
# }
# Here we remove applications we do not want
echo
tput setaf 2
echo "################################################################"
echo "################### Software to remove"
echo "################################################################"
tput sgr0
echo

sudo systemctl disable tlp.service

sudo pacman -Rns tlp --noconfirm

sudo pacman -Rns broadcom-wl-dkms --noconfirm

sudo pacman -Rns r8168-dkms --noconfirm

sudo pacman -Rns xf86-video-amdgpu --noconfirm
sudo pacman -Rns xf86-video-fbdev --noconfirm
sudo pacman -Rns xf86-video-openchrome --noconfirm
sudo pacman -Rns xf86-video-vmware --noconfirm
sudo pacman -Rns xf86-video-ati --noconfirm
sudo pacman -Rns xf86-video-nouveau --noconfirm
sudo pacman -Rns xf86-video-vesa --noconfirm

echo
tput setaf 2
echo "################################################################"
echo "################### Software removed"
echo "################################################################"
tput sgr0
echo