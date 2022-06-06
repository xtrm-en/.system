#!/bin/sh

ZSH_THEME="clean"
plugins=(git)

[[ -s "$HOME/.exportsrc" ]] && source "$HOME/.exportsrc"

[[ -s "$HOME/.aliasrc" ]] && source "$HOME/.aliasrc"

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
. "$HOME/.cargo/env"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
