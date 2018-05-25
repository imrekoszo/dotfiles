# global aliases
alias ig='grep -i'     ## case-insensitive grep
alias a='alias | ig'   ## search aliases
alias e="$EDITOR"
alias c='code -r'      ## launch VS code reusing existing window
alias manh='man --html'
alias f='xdg-open .'   ## open current folder in default file explorer
alias rmrf='rm -rf'

# tmux sessions
alias tp="tmuxp load ./.tmuxp.yaml"

# edit this very file easily
SCRIPT="$(readlink -f "$0")"
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
CLJS_DEPS='{:deps {org.clojure/clojurescript {:mvn/version "1.10.238"}}}'
CLJS_CMD="clj -Sdeps '$CLJS_DEPS'"
alias cljsn="$CLJS_CMD -m cljs.repl.node"
alias cljsb="$CLJS_CMD -m cljs.main"

# git
alias grbom='git rebase origin/master'
alias ggone='git branch -vv | ig gone'

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
