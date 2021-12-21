#!/bin/bash
source <(curl -s https://raw.githubusercontent.com/mfateminia/linux-scripts/master/pacman/functions.sh)

faillock --reset

#add new packages from pacman below:
pacman-install 'code'
pacman-install 'powerline'
pacman-install 'powerline-fonts'
pacman-install 'dotnet-sdk'
pacman-install 'dotnet-sdk-3.1'
pacman-install 'aspnet-runtime'
pacman-install 'aspnet-runtime-3.1'
pacman-install 'gnome-keyring'

#add new packages from aur below:
aur-install 'nvm'
aur-install 'google-chrome'
aur-install 'storageexplorer'
aur-install 'postman-bin'

zsh-install

shell-resource-add

#NuGet authorization package
wget -qO- https://aka.ms/install-artifacts-credprovider.sh | bash
