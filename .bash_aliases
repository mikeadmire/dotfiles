alias tu='top -o cpu' #top cpu processes
alias tm='top -o vsize' #top memory processes
alias ls='ls -FG'

alias s="screen -S slime"
function svim { local dir=`pwd`; mvim; screen -S slime; cd $dir; }

# TextMate
alias et='mate .'
alias ett='mate app config lib db public spec test vendor/plugins'

#Rails
#function ss {
#  if [ -e script/rails ]; then
#    script/rails server --debugger $@
#  else
#    script/server --debugger $@
#  fi
#}

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

#Subversion
alias sup='svn update'
alias sst='svn status'
alias scom='svn commit'
alias sd='svn diff | mate'
alias slog='svn log | more'
alias sex='svn export'

# tmux aliases
alias t='tmux -u'

# dotfiles & dotvim
alias update-dotfiles='curl https://raw.github.com/mikeadmire/dotfiles/master/install.sh -o - | sh'
alias update-dotvim='curl https://raw.github.com/mikeadmire/dotvim/master/install.sh -o - | sh'


if [ -f ~/.bash_aliases.private ]; then source ~/.bash_aliases.private; fi

