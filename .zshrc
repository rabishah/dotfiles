export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

source $HOME/.aliases
source $HOME/.zshenv
source $HOME/.my_env

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

source /Users/rabi/k/k.sh

# zplug
source ~/.zplug/zplug
source ~/.zplug/init.zsh

# Set the priority when loading
# e.g., zsh-syntax-highlighting must be loaded
# after executing compinit command and sourcing other plugins
zplug "zsh-users/zsh-syntax-highlighting", nice:10
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-completions"
zplug "stedolan/jq", \
  from:gh-r, \
  as:command, \
  rename-to:jq
zplug "b4b4r07/emoji-cli", \
  on:"stedolan/jq"
zplug "jocelynmallon/zshmarks"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose

# prompt
autoload -U promptinit && promptinit
prompt pure
