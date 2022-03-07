#!/bin/sh

FULLPATH="$(dirname "$(realpath ${BASH_SOURCE})")"
cd $FULLPATH

git pull origin main;

function install() {
    cp -aRfs $FULLPATH/dotfiles/ ~;
    cd ~/dotfiles
    cp -af --copy-contents ./ ../
    cd ..
    rm -rf ~/dotfiles
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    install;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/N): " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        install;
    fi;
fi;

unset install;