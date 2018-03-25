#!/bin/bash

# Install script for dot files and whatnot

# Custom vimrc file
vimrc_file="/home/russellkir/.vimrc"

if [ -f $vimrc_file ]
then
    echo "Removing old .vimrc file"
	rm $vimrc_file
fi

echo "Linking new .vimrc file"
ln -sv "$PWD/dotfiles/.vimrc" ~ > /dev/null

# Custom gitconfig file
gitconfig_file="/home/russellkir/.gitconfig"

if [ -f $gitconfig_file ]
then
    echo "Removing old .gitconfig file"
    rm $gitconfig_file
fi

echo "Linking new .gitconfig file"
ln -sv "$PWD/dotfiles/.gitconfig" ~ > /dev/null

# Custom oh-my-zsh file
echo "Installing custom oh-my-zsh file"
mv $PWD/oh-my-zsh/russell.zsh-theme /home/russellkir/.oh-my-zsh/themes/af-magic.zsh-theme
