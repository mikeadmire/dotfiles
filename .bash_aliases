alias tu='top -o cpu' #top cpu processes
alias tm='top -o vsize' #top memory processes

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

# dotfiles & dotvim
alias update-dotfiles='curl https://raw.github.com/mikeadmire/dotfiles/master/install.sh -o - | sh'
alias update-dotvim='curl https://raw.github.com/mikeadmire/dotvim/master/install.sh -o - | sh'


if [ -f ~/.bash_aliases.private ]; then source ~/.bash_aliases.private; fi
