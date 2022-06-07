#!/usr/bin/env bash

# add some environment variables
echo 'export ZDOTDIR=$HOME/.config/zsh' | sudo tee --append /etc/zsh/zshenv
echo 'source /home/$USER/.config/bash/.bashrc' | sudo tee --append /etc/bash.bashrc
echo 'QT_QPA_PLATFORMTHEME=qt5ct
EDITOR=nvim
GTK_IM_MODULE=fcitx
QT_IM_MODULE=fcitx
XMODIFIERS=@im=fcitx
XAUTHORITY=/home/$USER/.local/share/Xauthority/Xauthority' | sudo tee --append /etc/environment