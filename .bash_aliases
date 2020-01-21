if [ -f ~/.bash_aliases.private ]; then source ~/.bash_aliases.private; fi

# dotfiles
alias update-dotfiles='curl https://raw.githubusercontent.com/mikeadmire/dotfiles/master/install.sh -o - | sh'
alias update-dotvim='curl https://raw.githubusercontent.com/mikeadmire/dotvim/master/install.sh -o - | sh'
alias cleanup-dotfiles='rm .*.????????-??????; rm -rf dotfiles.????????-??????'

# Git
alias ga='git add .'
alias gco='git checkout'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gd='git diff | vim'
alias gl='git pull'
alias gp='git push'
alias gst='git status'
alias gm='git pull .' # git merge (usage: gm branchname)
alias gsr='git svn rebase'
alias gsdc='git svn dcommit'

# Kubernetes
alias k="kubectl"
alias kmini="kubectl config use-context minikube"
alias kdo="kubectl config use-context do-sfo2-starter"