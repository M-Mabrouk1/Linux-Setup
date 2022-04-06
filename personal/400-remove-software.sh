#!/bin/bash
#set -e

func_uninstall() {
	if pacman -Qi $1 &> /dev/null; then
		tput setaf 2
  		echo "###############################################################################"
  		echo "################## The package "$1" is being removed"
      	echo "###############################################################################"
      	echo
		tput sgr0
		sudo pacman -Rns --noconfirm $1
	else
    	tput setaf 3
    	echo "###############################################################################"
    	echo "##################  Package not installed "  $1
    	echo "###############################################################################"
    	echo
    	tput sgr0
    fi
}
# Here we remove applications we do not want
echo
tput setaf 2
echo "################################################################"
echo "################### Software to remove"
echo "################################################################"
tput sgr0
echo

readarray -t list <pkgs.txt
# list=()

for name in "${list[@]}" ; do
	count=$[count+1]
	tput setaf 3;echo "Installing package nr.  "$count " " $name;tput sgr0;
	func_uninstall $name
done
echo
tput setaf 2
echo "################################################################"
echo "################### Software removed"
echo "################################################################"
tput sgr0
echo