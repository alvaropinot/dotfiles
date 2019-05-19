# dotfiles

dotfiles

## Features

- Colored man pages (.exports)
- Setup git credentials (install.sh)

# TODO

- autocomplete folder/filename with just a portion of it ie: for zero-hero cd hero tab -> cd zero-hero
- up arrow for history
- colors schema
  - right now snazzy was manually install just for iterm2
- aliases
- git
  - git autocomplete
  - gi alias as I commit that mistake a lot
- vim setup
  - vimrc is halfway there
- autoupdate .dircolors
- Increase mac limit
- `sudo launchctl limit maxproc 2000 2500`
- `ulimit -S -n 2048`
- Vs code extensions management
- # Integrate with iTerm2.
  zstyle ':prezto:module:tmux:iterm' integrate 'yes'
- check this 👇

# Lines configured by zsh-newuser-install

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v

# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall

zstyle :compinstall filename '/Users/alvaropinot/.zshrc'

autoload -Uz compinit
compinit

# End of lines added by compinstall
