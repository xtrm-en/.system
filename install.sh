#!/bin/sh

cd "$(dirname "${BASH_SOURCE}")";

git pull origin main;

function syncAll() {
    rsync --exclude ".git/" \
        --exclude "install.sh" \
        --exclude "README.md" \
        --exclude "LICENSE" \
        -avh --no-perms . ~;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    syncAll;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/N): " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        syncAll;
    fi;
fi;

unset syncAll;