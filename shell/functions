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
