[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*

[[ -s "/usr/local/etc/bash_completion.d" ]] && . /usr/local/etc/bash_completion.d/*

complete -o default -o nospace -F _git g

. ~/dotfiles/bash/colors
. ~/dotfiles/bash/env
. ~/dotfiles/bash/aliases
