#!/bin/sh

BRANCH="new"

FULLPATH="$(dirname "$(realpath ${BASH_SOURCE})")"
cd $FULLPATH

git pull origin $BRANCH;

function install() {
    ln -sf "$FULLPATH/scripts" ~/scripts 
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
