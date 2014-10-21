[ -e "${HOME}/.zsh_aliases" ] && source "${HOME}/.zsh_aliases"
[ -e "${HOME}/.zshrc_local" ] && source "${HOME}/.zshrc_local"

source "$HOME/.antigen/antigen.zsh"

antigen use oh-my-zsh

antigen bundle git
antigen bundle golang
antigen bundle zsh-users/zsh-syntax-highlighting

antigen-theme blinks
antigen-apply

[ -e "${HOME}/.gvm/scripts/gvm" ] && source "${HOME}/.gvm/scripts/gvm"
export GOPATH="$HOME/go"
