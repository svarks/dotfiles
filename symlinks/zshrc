if [ ! -n "$ORIGINAL_PATH" ]; then
  export ORIGINAL_PATH=$PATH
fi
export PATH=/usr/local/bin:$ORIGINAL_PATH
export EDITOR=vim
export SHELL=`which zsh`

export HISTFILE=~/.zsh_history
export HISTSIZE=SAVEHIST=10000

setopt incappendhistory
setopt prompt_subst

source ~/dotfiles/shell/functions
source ~/dotfiles/shell/aliases

autoload -Uz vcs_info
autoload -U compinit promptinit

compinit
promptinit

zstyle ':vcs_info:*' enable git svn
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '%F{yellow}[%s:%b%u%c]%f '
zstyle ':vcs_info:*' stagedstr '+'
zstyle ':vcs_info:*' unstagedstr '*'

precmd () { vcs_info }

export PROMPT='%B%(?..[%?] )%b%n %~ %F{yellow}${vcs_info_msg_0_}%f$ '
export RPROMPT="%F{green}%D{%L:%M}%f %F{blue}\$(show_ruby_version)%f"

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
