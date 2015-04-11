#!/bin/bash

mkdir ~/.config

mkdir ~/dotfiles_old
mkdir ~/dotfiles_old/.config

for file in `ls -A --ignore={install.sh,.config,.git,.gitignore,.gitmodules,README.md}`
do
    mv ~/$file ~/dotfiles_old
    ln -s ~/dotfiles/$file ~/$file
done

for file in `ls -A .config`
do
    mv ~/.config/$file ~/dotfiles_old/.config
    ln -s ~/dotfiles/.config/$file ~/.config/$file
done

git submodule update --init --recursive
