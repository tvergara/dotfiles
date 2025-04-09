# oh my zsh config
ZSH_THEME="robbyrussell"
export ZSH="$HOME/.oh-my-zsh"
plugins=(git)
source $ZSH/oh-my-zsh.sh

eval "$(direnv hook zsh)"
eval "$(rbenv init - zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/opt/homebrew/opt/openssl@3/bin:$PATH"
export LS_COLORS="$(vivid generate molokai)"

LFCD="/Users/tom/dotfiles/lf/lfcd.sh"
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

# shortcut to link ialab notebook to local enviroment



# Created by `pipx` on 2024-03-19 04:02:37
export PATH="$PATH:/Users/tom/.local/bin"
export PATH="/usr/local/opt/python@3.10/bin:$PATH"



eval "$(/Users/tom/miniconda3/bin/conda shell.zsh hook)"
