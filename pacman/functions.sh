#!/bin/bash
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

    if [ -f PKGBUILD ]
    then
        header 'installing '$package_name
        sudo pacman -Syy
        makepkg -si --noconfirm
    fi

    cd ..
    rm -rf $package_name
}

pacman () {
    package_name=$1
    header 'installing '$package_name
    sudo pacman -Syy
    sudo pacman -S $package_name --noconfirm
}
