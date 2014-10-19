#!/bin/sh
cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
function doIt()
{
    read -p "This may overwrite existing files in your home directory! (y/n) " -n 1
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rsync --exclude ".DS_Store" --exclude ".git/" --exclude ".gitignore" --exclude ".gitmodules" --exclude "bootstrap.sh" --exclude "README.md" -av . ~
        echo 'installed'
    fi
}
doIt
