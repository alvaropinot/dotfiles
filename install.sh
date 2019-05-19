#!/bin/bash
set -x # echo on

# 1
# Install Homebrew -> https://brew.sh/
# This script will take care of installing Command Line Tools for Xcode
# as today.
# TODO: add if here
echo "Installing homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Install all the deps listed in brew.sh
./brew.sh

# Global npm packages

# My beloved prompt :)
npm i -g pure-prompt

# Add brew's zsh binary path to the list of allowed shells
ZSH_PATH=$(which zsh)
# if the path is not already present.
if ! grep -qe "^$ZSH_PATH$" "/etc/shells"; then
    echo "brew's zsh -> $ZSH_PATH added to the list of allowed terminals at /etc/shells"
    sudo bash -c 'echo $(which zsh) >> /etc/shells'
fi
# Set up `zsh` as default.
# NOTE: After installing everything with brew, zsh should be updated to the latest version.
echo "Setting up zsh as default"
chsh -s $ZSH_PATH


# Create symlinks for the .dotfiles
./symlink-setup.sh

# Git credentials
GIT_AUTHOR_NAME="Alvaro Pinot"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="alvaro@neatnait.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"