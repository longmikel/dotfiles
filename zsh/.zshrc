# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH="$HOME/tools/lua-language-server/bin/Linux:$PATH"
# User configuration
eval "$(starship init zsh)"

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

autoload -Uz compinit && compinit

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8

# Load specific config
source $HOME/.zsh/zshrc

source $HOME/.zsh/alias.zsh

source $HOME/.zsh/fzf.zsh
