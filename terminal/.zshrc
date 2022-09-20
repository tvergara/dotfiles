# oh my zsh config
ZSH_THEME="robbyrussell"
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

eval "$(rbenv init - zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# --httptoolkit--
# This section will be reset each time a HTTP Toolkit terminal is opened
if [ -n "$HTTP_TOOLKIT_ACTIVE" ]; then
    # When HTTP Toolkit is active, we inject various overrides into PATH
    export PATH="/Applications/HTTP Toolkit.app/Contents/Resources/httptoolkit-server/overrides/path:$PATH"

    if command -v winpty >/dev/null 2>&1; then
        # Work around for winpty's hijacking of certain commands
        alias php=php
        alias node=node
    fi
fi
# --httptoolkit-end--

alias dr='doppler run --'
alias drbe='doppler run -- bundle exec'
export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export LS_COLORS="$(vivid generate molokai)"

# Enable vi mode
bindkey -v

LFCD="$GOPATH/src/github.com/gokcehan/lf/etc/lfcd.sh"
LFCD="/Users/tomasvergara/dotfiles/lf/lfcd.sh"
if [ -f "$LFCD" ]; then
    source "$LFCD"
fi
bindkey -s '^F' 'lfcd\n'

export EDITOR="nvim"
export FZF_DEFAULT_COMMAND='fd --hidden --exclude={.git,.idea,.vscode,.sass-cache,node_modules,build,tmp,plugged,.rbenv,Library,.local} 2> /dev/null'

setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
