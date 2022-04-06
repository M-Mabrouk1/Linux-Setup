#!/bin/bash
#set -e

func_install() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is already installed"
      	echo "###############################################################################"
      	echo
		tput sgr0
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Installing package "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    	sudo pacman -S --noconfirm --needed $1
    fi
}

###############################################################################
echo "Installation of the core software"
###############################################################################

list=(
sddm
alacritty
sxhkd
dmenu
feh
picom
polkit-gnome
rofi
rofi-emoji
nemo
git
firefox
expac
bat
htop
duf
lsd
lua
lxappearance
zsh
lolcat
neofetch
neovim
ntfs-3g
stow
wget
nemo-fileroller
nemo-share
bleachbit
clementine
copyq
dconf-editor
gnome-disk-utility
fcitx5
flameshot
gparted
kdeconnect
meld
lxrandr
arandr
nomacs
piper
peek
xfce4-power-manager
qbittorrent
qt5ct
zathura
vlc
xcolor
nvtop
nvidia-prime
yt-dlp
barrier
gvfs-mtp
playerctl
python-pywal
dunst
)

count=0

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_install $name
done

###############################################################################

tput setaf 5;echo "################################################################"
echo "Enabling sddm as display manager"
echo "################################################################"
echo;tput sgr0
sudo systemctl enable sddm.service -f

if systemd-detect-virt; then
    echo 'xrandr --output Virtual-1 --primary --mode 1920x1080 --rotate normal' | sudo tee --append /usr/share/sddm/scripts/Xsetup
	sudo pacman -S --noconfirm --needed spice-vdagent
else
    echo "not virt"
fi

tput setaf 7;echo "################################################################"
echo "You now have a very minimal functional desktop"
echo "################################################################"
echo;tput sgr0

tput setaf 11;
echo "################################################################"
echo "Reboot your system"
echo "################################################################"
echo;tput sgr0
