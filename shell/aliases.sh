#!/usr/bin/env bash

# temp stuff
# alias n='use_next_theme'
# alias p='use_prev_theme'
# alias u='use_theme'

# good git indicators
#  agnoster
#  gozilla
#  half-life
#  

# global aliases
alias ig='grep -i'     ## case-insensitive grep
alias a='alias | ig'   ## search aliases
alias e='$EDITOR'
alias c='code -r'      ## launch VS code reusing existing window
alias manh='man --html'
alias rmrf='rm -rf'

open () {
  xdg-open "$*" &
}

alias f='open .'   ## open current folder in default file explorer

# tmux sessions
alias tp="tmuxp load ./.tmuxp.yaml"

# edit this very file easily
SCRIPT="$(readlink -f "$0")"
# shellcheck disable=SC2139
alias ea="e $SCRIPT"

# arch linux
alias pacown='pacman -Qo' ## what package owns a file?
alias yaown='yaourt -Qo'

# streaming download
alias yd=youtube-dl
alias ydf='yd -f'
alias ydff='yd -F'
alias yda='yd --extract-audio -f'
alias ydab='yda best'

# clojure
alias nightlight='clj -Anightlight'

# clojurescript
alias cljsn="clj -A:cljs:cljs-node-repl"
alias cljsb="clj -A:cljs:cljs-repl"

# git
alias grbom='git rebase origin/master'
alias ggone='git branch -vv | ig gone'
alias gdt='git dt'
alias gdd='git dtd'

# yarn
alias yy=yarn
alias yc='yarn canipush'
alias yyc='yarn && yarn canipush'

# docker
alias dstart='sudo systemctl start docker'
alias dstop='sudo systemctl stop docker'
alias drestart='sudo systemctl restart docker'

alias dco='sudo docker-compose'
alias dcol='sudo docker-compose logs -f --tail 100'
alias dcou='sudo docker-compose up'
alias dcoud='sudo docker-compose up -d'
alias dcou!='sudo docker-compose up --force-recreate'
alias dcoud!='sudo docker-compose up --force-recreate -d'
alias dcod='sudo docker-compose down'
alias dcod!='sudo docker-compose down --remove-orphans'
alias dcor='sudo docker-compose rm'
alias dcor!='sudo docker-compose rm --force'

# irish rail wifi has problems connecting when docker is running...
alias rail='sudo irishrail'

# vpn shorthand
alias vpn='sudo barracudavpn'
