# global aliases
alias ig="grep -i"
alias a="alias | ig"
alias e=$EDITOR
alias manh='man --html'

alias grbom='git rebase origin/master'

# docker shorthands
alias dstart='sudo systemctl start docker'
alias dstop='sudo systemctl stop docker'
alias drestart='sudo systemctl restart docker'
alias dup='sudo docker-compose up --build'
alias drm='sudo docker-compose rm --force'

# irish rail wifi has problems connecting when docker is running...
alias rail='sudo irishrail'
