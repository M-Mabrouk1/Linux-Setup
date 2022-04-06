#!/bin/bash
#set -e

echo
tput setaf 2
echo "################################################################"
echo "################### Autostart certain applications"
echo "################################################################"
tput sgr0
echo

[ -d $HOME"/.config/autostart" ] || mkdir -p $HOME"/.config/autostart"

sleep 1

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
echo $installed_dir
cp -f $installed_dir/autostart/* $HOME"/.config/autostart"

echo
tput setaf 2
echo "################################################################"
echo "################### Autostart done"
echo "################################################################"
tput sgr0
echo