
#Docker aliases
alias dk='docker'
alias dkils='docker image ls'
alias dkilsa='docker image ls -a'
alias dkcls='docker container ls'
alias dkclsa='docker container ls -a'
alias dkcrma='docker rm -f $(docker ps -a -q)'
alias dkirmd='docker rmi $(docker images -f "dangling=true" -q)'
alias dkb='docker build -t'
alias dkbnc='docker build --no-cache -t'

#Docker compose aliases
alias dkc="docker-compose"
alias dkcu="docker-compose up"
alias dkcd="docker-compose down"


#Kubectl aliases
alias kc='kubectl'
alias kcl='kubectl logs -f '
alias kcg='kubectl get pod '
alias kcdesc='kubectl describe pod '
alias kccm='kubectl edit configmap '
alias kcdel='kubectl delete pods '
