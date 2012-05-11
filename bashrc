if [ -s /usr/local/etc/bash_completion.d ]; then
  for f in /usr/local/etc/bash_completion.d/*.bash; do source $f; done
fi

complete -o default -o nospace -F _git g

. ~/dotfiles/bash/colors
. ~/dotfiles/bash/env
. ~/dotfiles/bash/aliases

eval "$(rbenv init -)"
