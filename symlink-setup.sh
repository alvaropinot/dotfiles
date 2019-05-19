#!/bin/bash
set -x # echo on

# TODO: use a fn instead as this is growing ugly.
echo "Creating symlinks..."
ln -fs $(pwd)/.zshrc $HOME/.zshrc
ln -fs $(pwd)/.exports $HOME/.exports
ln -fs $(pwd)/.alias $HOME/.alias
ln -fs $(pwd)/.dircolors $HOME/.dircolors
ln -fs $(pwd)/.vimrc $HOME/.vimrc
