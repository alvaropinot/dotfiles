#!/bin/bash
set -x # echo on

echo "Dumping brew installs into Brewfile..."
brew bundle dump --force
cat Brewfile

echo "Dumping vs code installed extensions..."
code --list-extensions > vs-code-extensions.txt
cat vs-code-extensions.txt
