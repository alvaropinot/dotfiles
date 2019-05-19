#!/bin/bash
set -x # echo on

# Make sure brew is the latest version.
echo "Updating brew..."
brew update

# Upgrade any already-installed tools and formulae.
echo "Upgrading brew formulae..."
brew upgrade

# Install anything listed in `Brewfile`.
brew bundle

# Clean any outdated versions.
brew cleanup