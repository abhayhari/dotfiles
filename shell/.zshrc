# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# fzf key bindings and completion.
source <(fzf --zsh)

