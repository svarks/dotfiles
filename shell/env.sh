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

# ruby

# ruby 1.9.3 requires proper certs (brew install curl-ca-bundle)
export SSL_CERT_FILE=/usr/local/etc/openssl/certs/cert.pem
