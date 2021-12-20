#!/bin/bash
source ./functions.sh

faillock --reset

#add new packages from pacman below:
pacman 'code'
pacman 'powerline'
pacman 'powerline-fonts'
pacman 'dotnet-sdk'
pacman 'gnome-keyring'

#add new packages from aur below:
aur 'nvm'
aur 'google-chrome'
aur 'storageexplorer'

#content to be appended to .bashrc
#any new content that needs to be appended to .bashrc should be added to .bashrc in this folder
curl https://raw.githubusercontent.com/mfateminia/linux-scripts/master/pacman/.bashrc >> ~/.bashrc

#NuGet authorization package
wget -qO- https://aka.ms/install-artifacts-credprovider.sh | bash
