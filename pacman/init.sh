#!/bin/bash

start() {
    faillock --reset
}

header () {
    header=$1
    echo ===============================================
    echo $header
    echo ===============================================  
}

aur () {
    package_name=$1
    git clone https://aur.archlinux.org/$package_name.git
    cd $package_name
    header 'installing '$package_name
    sudo pacman -Syy
    makepkg -si --noconfirm
    cd ..
    rm -rf $package_name
}

pacman () {
    package_name=$1
    header 'installing '$package_name
    sudo pacman -Syy
    sudo pacman -S $package_name --noconfirm
}

finilize () {
    #content to be appended to .bashrc
    #any new content that needs to be appended to .bashrc should be added to .bashrc in this folder
    header 'Finalizing installations'
    cat .bashrc >> ~/.bashrc
}

start
 
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

finilize