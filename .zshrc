#!/bin/sh

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git)

[[ -s "$HOME/.exportsrc" ]] && source "$HOME/.exportsrc"
[[ -s "$HOME/.aliasrc" ]] && source "$HOME/.aliasrc"

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
