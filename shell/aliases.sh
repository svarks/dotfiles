alias ds-show='find . -name "*.DS_Store" -type f'
alias ds-remove='find . -name "*.DS_Store" -type f -delete'

# rails
alias ss='./script/server'
alias sc='./script/console'
alias r='rails'
alias b='bundle'
alias be='bundle exec'
alias br='bundle exec rake'
alias remigrate='bundle exec rake db:migrate:reset db:seed'
alias rtest='bundle exec ruby -Itest'

# git
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit -v'
alias gd='git diff'
alias gf='git fetch'
alias gl='git pull'
alias gm='git merge'
alias gp='git push'
alias gr='git rebase'
alias gs='git status'
alias gaa='git add --all'
alias gau='git add -u'
alias gam='git add --amend'
alias gap='git add -p'
alias gba='git branch -a'
alias gco='git checkout'
alias gdc='git diff --cached'
alias gdh='git diff HEAD'
alias glo='git la'
alias gpr='git pull --rebase'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias grh='git reset --hard'
alias gss='git status -s'

#tmux
alias tmux-reload='tmux source-file ~/.tmux.conf'

# general
alias mvr='mvim --remote-silent'
alias vr='vim --remote-silent'
alias reload='source ~/.${SHELL}rc'
alias l='ls -lahG'
alias tree='tree -C'
alias trls='tree -C|less -R'
alias cleanup='find . -name "*.DS_Store" -or -name "*.swp" -or -name "*.bak" -type f | xargs -0 rm -v'
