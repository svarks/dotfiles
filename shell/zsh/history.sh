export HISTFILE=~/.zsh_history
export HISTSIZE=SAVEHIST=10000

source ~/dotfiles/shell/plugins/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
