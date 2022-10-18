# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH="$HOME/tools/lua-language-server/bin/Linux:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

autoload -Uz compinit && compinit
# User configuration
eval "$(starship init zsh)"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8

# Load specific config for linux or osx

case $(uname) in
Linux)
  [ -f ~/.zsh/zshrc.linux ] && source ~/.zsh/zshrc.linux
  [ -f ~/.zsh/alias.linux ] && while read line; do eval "alias $line"; done < ~/.zsh/alias.linux
  ;;
Darwin)
  [ -f ~/.zsh/zshrc.osx ] && source ~/.zsh/zshrc.osx
  [ -f ~/.zsh/alias.osx ] && while read line; do eval "alias $line"; done < ~/.zsh/alias.osx
  ;;
esac
