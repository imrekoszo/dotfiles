#!/usr/bin/env bash

# temp stuff
# alias n='use_next_theme'
# alias p='use_prev_theme'
# alias u='use_theme'

# good git indicators
#  agnoster
#  gozilla
#  half-life

# global aliases
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias ig='grep -i'     ## case-insensitive grep
alias a='alias | ig'   ## search aliases
alias e='${VISUAL:-${EDITOR:-nano}}'
alias c='code -r'      ## launch VS code reusing existing window
alias manh='man --html'
alias rmrf='rm -rf'

# tmux sessions
alias tp="tmuxp load ./.tmuxp.yaml"

# edit this very file easily
SCRIPT="$(realpath "$0")"
# shellcheck disable=SC2139
alias ea="e $SCRIPT"

# streaming download
alias yd=youtube-dl
alias ydf='yd -f'
alias ydff='yd -F'
alias yda='yd --extract-audio -f'
alias ydab='yda best'

# clojure
alias ka='if [[ -x bin/kaocha-local ]]; then bin/kaocha-local ; else bin/kaocha ; fi;'
alias ko='clj-kondo --lint src:test'
alias koinit='clj-kondo --lint "$(clojure -A:test -Spath)"'

# git
unalias gcp
alias gcpi='git cherry-pick'
alias grbom='git rebase origin/master'
alias grbum='git rebase upstream/master'
alias ggone='git branch -vv | ig gone'
alias gdt='git dt'
alias gdd='git dtd'
alias hpr='hub pull-request'
alias gfos='git fetch origin master:master'
alias gfus='git fetch upstream master:master'
alias tiga='tig --all'

# hub completion hotfix, https://github.com/github/hub/issues/1792#issuecomment-518227676
alias __git=hub

# brew
alias buu='brew update && brew upgrade'

# arch linux
# alias pacown='pacman -Qo' ## what package owns a file?
# alias yaown='yaourt -Qo'

# linux
# open () {
#   xdg-open "$*" &
# }

# alias f='open .'   ## open current folder in default file explorer
