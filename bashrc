[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # Load RVM into a shell session *as a function*

if [ -s /usr/local/etc/bash_completion.d ]; then
  for f in /usr/local/etc/bash_completion.d/*; do source $f; done
fi

complete -o default -o nospace -F _git g

. ~/dotfiles/bash/colors
. ~/dotfiles/bash/env
. ~/dotfiles/bash/aliases

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
