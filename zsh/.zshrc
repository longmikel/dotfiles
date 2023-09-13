# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#export PATH="$HOME/tools/lua-language-server/bin/Linux:$PATH"
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"

export CHEZMOI="$HOME/.local/share/chezmoi"

autoload -Uz compinit && compinit
# User configuration
eval "$(starship init zsh)"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8

# Load specific config for linux or osx

case $(uname) in
Linux)
  [ -f $CHEZMOI/zsh/.zsh/zshrc.linux ] && source $CHEZMOI/zsh/.zsh/zshrc.linux
  [ -f $CHEZMOI/zsh/.zsh/alias.linux ] && while read line; do eval "alias $line"; done < $CHEZMOI/zsh/.zsh/alias.linux
  ;;
Darwin)
  [ -f $CHEZMOI/zsh/.zsh/zshrc.osx ] && source $CHEZMOI/zsh/.zsh/zshrc.osx
  [ -f $CHEZMOI/zsh/.zsh/alias.osx ] && while read line; do eval "alias $line"; done < $CHEZMOI/zsh/.zsh/alias.osx
  ;;
esac
