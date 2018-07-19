# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
#plugins=(git)
plugins=(bundler admire)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

bindkey -v
export EDITOR='/usr/local/bin/vim'
export PATH="$PATH:$HOME/bin:/usr/local/sbin:/usr/local/share/npm/bin:/usr/local/packer:$HOME/android_sdk/tools:$HOME/android_sdk/platform-tools"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

### Go Language Settings ###
export GOROOT=/usr/local/go
export GOARCH=amd64
export GOOS=darwin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
###

### JavaScript ###
export NODE_PATH=/usr/local/lib/node_modules:/usr/local/share/npm/lib/node_modules
[[ -r $HOME/.nvm/nvm.sh ]] && source $HOME/.nvm/nvm.sh
###

### rbenv ###
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
###

### Packer ###
export PATH="$PATH:/usr/local/packer"
###

fpath=(~/.zsh/Completion $fpath)

### Java ###
export JAVA_HOME="/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export PATH="$JAVA_HOME/bin":$PATH
###

### Node ###
export NVM_DIR=~/.nvm
source $NVM_DIR/nvm.sh
###

### Google Cloud ###
if [ -f '/usr/local/google-cloud-sdk/path.zsh.inc' ]; then source '/usr/local/google-cloud-sdk/path.zsh.inc'; fi
if [ -f '/usr/local/google-cloud-sdk/completion.zsh.inc' ]; then source '/usr/local/google-cloud-sdk/completion.zsh.inc'; fi
###

[[ -r $HOME/.zshrc.local ]] && source $HOME/.zshrc.local

