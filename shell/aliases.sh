# global aliases
alias ig="grep -i"
alias a="alias | ig"
alias e=$EDITOR
alias c=code -r ## launch VS code reusing existing window pass file to open it

alias yd=youtube-dl
alias ydf="yd -f"
alias ydff="yd -F"
alias yda="yd --extract-audio -f"
alias ydab="yda best"

alias manh='man --html'
alias n="nautilus ."
alias rmrf="rm -rf"
alias cljs='clj -Sdeps "{:deps {org.clojure/clojurescript {:mvn/version \"1.9.946\"}}}" -m cljs.repl.node'

alias grbom='git rebase origin/master'

# docker shorthands
alias dstart='sudo systemctl start docker'
alias dstop='sudo systemctl stop docker'
alias drestart='sudo systemctl restart docker'

alias dco='sudo docker-compose'
alias dcol="sudo docker-compose logs -f --tail 100"
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
