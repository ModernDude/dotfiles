#!/bin/bash

# Setup symlinks for dotfiles

INSTALL_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

function make-link {
    ln -sf $INSTALL_DIR/dots/$1 $HOME/$1
}

if [[ $OSTYPE == darwin* ]]; then
    echo installing OSX...
    
    files=(
	".bashrc"
	".bash_profile"
	".gitconfig"
	".gitignore"
	".emacs.d"
	".gnus.el"
    )
else
    echo installing linux...
    
    files=(
	".Xmodmaprc"
	".Xresources"
	".bash_profile"
	".bashrc"
	".gitconfig"
	".gitignore"
	".emacs.d"
	".gnus.el"
	".xinitrc"
	".xmobarrc"
	".xmonad"
    )
fi 


for i in "${files[@]}"
do
    make-link $i
done

echo rock and roll!!!!!!!!!
