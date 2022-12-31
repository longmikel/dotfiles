#!/bin/bash
## define check program
checkProgram() {
  if ! hash "$1" /dev/null 2>&1; then
    echo "Command not found: $1. Aborting ..."
    exit 1
  fi
}

checkProgram stow
checkProgram curl

mkdir -p "$HOME/.config"

# Link
stow --target "$HOME" zsh
stow --target "$HOME" tmux
stow --target "$HOME" nvim
