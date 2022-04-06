---
title: "Arch Linux Setup"
tags: ""
---

# Arch Linux setup

## Base installation

## list
```
pacman -S grub efibootmgr networkmanager network-manager-applet wireless_tools wpa_supplicant dialog os-prober mtools dosfstools base base-devel linux-headers
```
## GRUB
```
grub-install --target=x86_64-efi --efi-directory=/boot/EFI --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg
```
## Install paru AUR helper
```
sudo pacman -S --needed base-devel
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
```

## Application installation

### 1. My dot files
```
git clone https://github.com/M-Mabrouk1/Dotfiles
```
### 2. Set Zsh and Bash directory
```
sudo vim /etc/zsh/zshenv
export ZDOTDIR=$HOME/.config/zsh

sudo vim /etc/bash.bashrc
source /home/mabrouk/.config/bash/.bashrc 
```
### 3. Setup environment variables
```
sudo vim /etc/environment
QT_QPA_PLATFORMTHEME=qt5ct
EDITOR=nvim
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
```
### 4. Install vim-plug
```
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
### 5. Install extreme cooling for fan managin