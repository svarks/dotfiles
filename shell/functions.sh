GIT_PS1_SHOWDIRTYSTATE=true

show_git_branch() {
  if type -p vcprompt >/dev/null; then
    vcprompt
  else
    __git_ps1 "[git:%s]"
  fi
}

show_ruby_version() {
  if type -p rbenv >/dev/null; then
    echo "(ruby:$(rbenv version-name))"
  fi
}

gifify() {
  if [[ "$1" && "$2" ]]; then
    ffmpeg -i "$1" -filter:v scale=800:-1 -pix_fmt rgb24 -r 10 -f gif - | gifsicle --optimize=3 --delay=3 > "$2"
  else
    echo "Usage: gifify [filename] [outfile]"
  fi
}
