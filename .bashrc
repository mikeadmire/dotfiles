set -o vi
#export RAILS_ENV=development
export SVN_EDITOR='/usr/local/bin/vim'
export PATH=$PATH:~/bin:/usr/local/sbin:~/bin:$HOME/.rbenv/bin:/usr/local/share/npm/bin
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export CLASSPATH=$CLASSPATH:/usr/local/java_include/javamail-1.4.3/mail.jar:/usr/local/java_include/mysql-connector-java-5.1.11/mysql-connector-java-5.1.11-bin.jar
export NODE_PATH=/usr/local/lib/node_modules:/usr/local/share/npm/lib/node_modules
#export CC=gcc-4.2
export GOROOT=/usr/local/go

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
[[ -r $rvm_path/scripts/completion ]] && source $rvm_path/scripts/completion
[[ -r $HOME/.nvm/nvm.sh ]] && source $HOME/.nvm/nvm.sh

if [ -f ~/.bash_aliases ]; then source ~/.bash_aliases; fi

if [ -f ~/dotfiles/git-completion.bash ]; then source ~/dotfiles/git-completion.bash; fi
export PS1='\h:\W \u$(__git_ps1 " (\[\e[0;36m\] %s \[\e[m\])") \$ '
