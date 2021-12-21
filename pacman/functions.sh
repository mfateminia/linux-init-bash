function header-display {
    header=$1
    echo ===============================================
    echo $header
    echo ===============================================  
}

function aur-install {
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

function pacman-install {
    package_name=$1
    header-display 'installing '$package_name
    sudo pacman -Syy
    sudo pacman -S $package_name --noconfirm
}

function zsh-install {
    #install and configure zsh
    curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
    #add auto suggestion to zsh
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
}

function shell-resources-add {
    curl https://raw.githubusercontent.com/mfateminia/linux-scripts/master/pacman/shell-resources >> ~/.zshrc
    curl https://raw.githubusercontent.com/mfateminia/linux-scripts/master/pacman/functions.sh >> ~/.zshrc
}
