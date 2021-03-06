# Use `hub` as our git wrapper:
#   http://defunkt.github.com/hub/
hub_path=$(which hub)
if (( $+commands[hub] ))
then
  alias git=$hub_path
fi

# The rest of my fun git aliases
alias gpl='git pull --prune'
alias gplo='git pull origin'
alias gplom='git pull origin master'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative"
alias gp='git push'
alias gpo='git push origin'
alias gpom='git push origin master'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcom='git checkout master'
alias gcb='git copy-branch-name'
alias gb='git branch'
alias gf='git fetch'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias ga='git add -N . && git add --patch'
alias grb='git rebase'
alias grs='git reset'
alias gprune='git remote prune origin; git branch --merged master | grep -v "master$" | xargs git branch -d'
