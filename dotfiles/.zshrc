#!/bin/sh

ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)

[[ -s "$HOME/.exportsrc" ]] && source "$HOME/.exportsrc"

[[ -s "$HOME/.aliasrc" ]] && source "$HOME/.aliasrc"

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
. "$HOME/.cargo/env"
