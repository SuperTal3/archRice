#!/bin/bash

#Intro
echo "This program installs The Primary Components of SuperTal3-OS"
echo "------------------------------------------------------------"

#Make Dirs
echo"Making Directories"
mkdir ~/Desktop
mkdir ~/Downloads
mkdir ~/Documents
mkdir ~/Pictures
mkdir ~/Videos
mkdir ~/source
mkdir ~/source/repos
cp ./spacewall.jpg ~/Pictures/spacewall.jpg

#Installing Key Packages
echo "Installing Key Packages"
pacman -Syyu
pacman -S plasma-meta dolphin konsole latte-dock 
pacman -S i3-gaps i3blocks i3lock i3status kitty rofi zsh
pacman -S chromium firefox code atom vi vim neovim vifm openvpn

#Configure Themes
echo "Configuring Themes"
git clone https://github.com/dracula/kitty.git
cd ./kitty
cp ./dracula.conf ~/.config/kitty/dracula.conf
echo "include dracula.conf" >> ~/.config/kitty/kitty.conf
cd ~
git clone https://github.com/dracula/rofi
cd ./rofi
cp ./config.rasi ~/.config/rofi
cd ~

#Install Trizen
echo "Installing Trizen"
git clone https://aur.archlinux.org/trizen.git
cd trizen
makepkg -si
cd ~

#Install Spotify Discord
echo "Installing Other Key Packages"
trizen -S spotify-git
triuzen -S discord

#Install Polybar
trizen -S polybar

#Configure Polybar
git clone https://github.com/adi1090x/polybar-themes
cd polybar-themes/polybar-4
cp -r fonts/* ~/.local/share/fonts
fc-cache -v
cp -r * ~/.config/polybar
cd ~

#BlackArch Tools
echo "Installing BlackArch Repos"
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
./strap.sh
pacman -Syy

#Update PIP
echo "Updating Pip"
python -m pip install --upgrade pip

#Install Impacket
echo "Installing Impacket"
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
