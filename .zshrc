ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh

bindkey -v
export EDITOR='/usr/local/bin/vim'
export PATH="$PATH:$HOME/bin:/usr/local/sbin:/usr/local/share/npm/bin:$HOME/Library/Python/3.7/bin:/usr/local/arachni/bin"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

### Go ###
export GOROOT="$(brew --prefix golang)/libexec"
export GOARCH=amd64
export GOOS=darwin
export GOPATH=$HOME/go
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
######

### NVM ###
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
###

### PYENV ###
#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"
###

### K8s ###
[[ /usr/local/bin/kubectl ]] && source <(kubectl completion zsh)
###

[[ -f $HOME/.aliases ]] && source $HOME/.aliases
[[ -r $HOME/.zshrc.local ]] && source $HOME/.zshrc.local
fpath=(~/.zsh/Completion $fpath)
