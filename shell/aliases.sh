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
alias clj-outdated='clojure -Sdeps "{:aliases {:outdated {:replace-deps {olical/depot {:mvn/version \"2.0.1\"}}}}}" -Srepro -M:outdated -m depot.outdated.main'

# git
unalias gcp
alias gcpi='git cherry-pick'
alias grbom='git rebase origin/master'
alias grbum='git rebase upstream/master'
# shellcheck disable=SC2142
alias ggone='git for-each-ref --format '\''%(refname) %(upstream:track)'\'' refs/heads | awk '\''$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'\'''
alias gprune='ggone | xargs -n 1 git branch -d'
alias gdt='git dt'
alias gdd='git dtd'
alias hpr='hub pull-request'
alias gfos='git fetch origin master:master --prune'
alias gfus='git fetch upstream master:master --prune'
alias tiga='tig --all'
alias gmu='gco master && gl && gfo'

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
