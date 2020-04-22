#!/bin/bash

echo "This program installs The Primary Components of SuperTal3-OS"


echo "Installing Key Packages"
pacman -Syyu
pacman -S plasma-meta i3-gaps i3blocks i3lock i3status chromium firefox nmap code atom vi vim neovim vifm 
systemctl enable sddm
systemctl start sddm
echo "Done"
