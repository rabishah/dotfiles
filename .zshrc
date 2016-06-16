export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

source $HOME/.aliases
source $HOME/.zshenv

# allow a larger history file
HISTSIZE=5000
HISTFILESIZE=10000
HISTCONTROL=ignoreboth
HISTIGNORE='ls:bg:fg:history'
HISTTIMEFORMAT='%F %T '
#store history immediately
PROMPT_COMMAND='history -a'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[[ -s "/Users/rabi/.gvm/scripts/gvm" ]] && source "/Users/rabi/.gvm/scripts/gvm"

export GOROOT_BOOTSTRAP=$GOROOT
export GOROOT=/Users/rabi/.gvm/gos/go1.6.2
export GOPATH=/Users/rabi/Personal/golang
export PATH=$PATH:/Users/rabi/Personal/golang/bin
