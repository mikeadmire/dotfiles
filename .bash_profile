if [ -f ~/.bashrc ]; then source ~/.bashrc; fi
if [ -f ~/.bash_aliases ]; then source ~/.bash_aliases; fi

export ENV=$HOME/.bashrc

### Go Language Settings ###
export GOROOT=$HOME/go
export GOARCH=amd64
export GOOS=darwin
###

eval "$(rbenv init -)"

if [ -f `brew --prefix`/etc/bash_completion ]; then
      . `brew --prefix`/etc/bash_completion
fi
