header-display () {
    header=$1
    echo ===============================================
    echo $header
    echo ===============================================  
}

aur-install () {
    package_name=$1
    git clone https://aur.archlinux.org/$package_name.git
    cd $package_name

    if [ -f PKGBUILD ]
    then
        header-display 'installing '$package_name
        sudo pacman -Syy
        makepkg -si --noconfirm
    fi

    cd ..
    rm -rf $package_name
}

pacman-install () {
    package_name=$1
    header-display 'installing '$package_name
    sudo pacman -Syy
    sudo pacman -S $package_name --noconfirm
}
