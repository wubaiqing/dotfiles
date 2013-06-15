#!/bin/sh

function install() {
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        rsync --exclude ".DS_Store" --exclude ".git/" --exclude ".gitignore" --exclude ".gitmodules" --exclude "install.sh" --exclude "README.md" -av . ~
        echo 'installed'
    fi
}

install
