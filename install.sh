#!/bin/bash

echo "This program installs The Primary Components of SuperTal3-OS"

#Installing Key Packages
echo "Installing Key Packages"
pacman -Syyu
pacman -S plasma-meta dolphin konsole latte-dock i3-gaps i3blocks i3lock i3status kitty chromium firefox code atom vi vim neovim vifm openvpn

#Install Trizen
echo "Installing Trizen"
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si

#Installs polybar
echo "Installing Other Key Packages"
trizen -S polybar
trizen -S spotify-git
triuzen -S discord

#BlackArch Tools
cd ~
echo "Installing BlackArch Repos"
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
./strap.sh
pacman -Syy

echo "Updating pip"
#Update PIP
python -m pip install --upgrade pip

echo "Installing Impacket"
#Install the Impacket Tools
cd ~
wget https://github.com/SecureAuthCorp/impacket/releases/download/impacket_0_9_21/impacket-0.9.21.tar.gz
tar -xzvf ./impacket-09.21.tar.gz
cd ./impacket-09.21.tar.gz
pip install .

#Enable SDDM
echo "Enabling SDDM"

systemctl enable sddm

echo "DONE"
echo "-Starting SuperTal3-OS-"
echo"-"
echo"-"
echo"-"
echo"-"
echo"-"
echo"-"
echo"-"
echo"-"
echo"-"
echo"-"
echo"-"

reboot now
