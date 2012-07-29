if [ ! -n "$ORIGINAL_PATH" ]; then
  export ORIGINAL_PATH=$PATH
fi
export PATH=/usr/local/bin:${ORIGINAL_PATH/\:\/usr\/local\/bin/}
export EDITOR=vim

if [[ -x $HOME/homebrew ]]; then
  export HOMEBREW_TEMP=$HOME/homebrew/tmp
fi

if which rbenv > /dev/null; then
  eval "$(rbenv init -)"
fi
