#!/bin/bash
#set -e

echo
tput setaf 2
echo "################################################################"
echo "################### Fonts to be installed"
echo "################################################################"
tput sgr0
echo

[ -d $HOME"/.fonts" ] || mkdir -p $HOME"/.fonts"

echo
echo "Copy fonts to .fonts"
echo
installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
sudo cp -rf $installed_dir/fonts/* usr/share/fonts/
echo
echo "Building new fonts into the cache files";
echo "Depending on the number of fonts, this may take a while..."
echo
sudo fc-cache -fv

echo
tput setaf 2
echo "################################################################"
echo "################### Fonts installed"
echo "################################################################"
tput sgr0
echo