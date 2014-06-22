[ -e "${HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle golang
antigen bundle zsh-users/zsh-syntax-highlighting

antigen-theme blinks
antigen-apply

#source /usr/local/bin/virtualenvwrapper.sh

#GO stuff PATH and GOPATH must happen *after* gvm
source $HOME/.gvm/scripts/gvm
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
