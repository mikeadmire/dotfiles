alias tu='top -o cpu' #top cpu processes
alias tm='top -o vsize' #top memory processes
alias ls='ls -FG'
alias s="screen -S slime"
function svim { local dir=`pwd`; mvim; screen -S slime; cd $dir; }

#Subversion
alias sup='svn update'
alias sst='svn status'
alias scom='svn commit'
alias sd='svn diff | mate'
alias slog='svn log | more'
alias sex='svn export'

# TextMate
alias et='mate .'
alias ett='mate app config lib db public spec test vendor/plugins'

#Ruby
alias att='autotest'

#Rails
#function ss {
#  if [ -e script/rails ]; then
#    script/rails server --debugger $@
#  else
#    script/server --debugger $@
#  fi
#}
function ss {
  if [ -e script/rails ]; then
    script/rails server $@
  else
    script/server $@
  fi
}
function sc {
  if [ -e script/rails ]; then
    script/rails console $@
  else
    script/console $@
  fi
}
function sg {
  if [ -e script/rails ]; then
    script/rails generate $@
  else
    script/generate $@
  fi
}
alias sp='./script/plugin'

# Git Aliases
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

# Janus aliases
function janus-update {
  git clone git@github.com:mikeadmire/janus.git ~/.vim
  cd ~/.vim
  rake
  cd -
}

# tmux aliases
alias t='tmux -u'

# bundler
alias b="bundle"
alias bi="b install --path vendor"
alias bu="b update"
alias be="b exec"
alias binit="bi && b package && echo 'vendor/ruby' >> .gitignore"

# dotfiles
alias update_dotfiles='curl https://raw.github.com/mikeadmire/dotfiles/master/install.sh -o - | sh'


if [ -f ~/.bash_aliases.private ]; then source ~/.bash_aliases.private; fi

