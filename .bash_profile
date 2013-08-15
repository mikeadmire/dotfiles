if [ -f ~/.bashrc ]; then source ~/.bashrc; fi
if [ -f ~/.bash_aliases ]; then source ~/.bash_aliases; fi

export ENV=$HOME/.bashrc

### Go Language Settings ###
export GOROOT=/usr/local/go
export GOARCH=amd64
export GOOS=darwin
###

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi

source $HOME/.rvm/scripts/rvm
