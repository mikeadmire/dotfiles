#export RAILS_ENV=development
export SVN_EDITOR='/usr/local/bin/vim'
export PATH=$PATH:~/bin:/usr/local/sbin:~/bin
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad
export CLASSPATH=$CLASSPATH:/usr/local/java_include/javamail-1.4.3/mail.jar:/usr/local/java_include/mysql-connector-java-5.1.11/mysql-connector-java-5.1.11-bin.jar
export NODE_PATH=/usr/local/lib/node

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
[[ -r $rvm_path/scripts/completion ]] && source $rvm_path/scripts/completion

if [ -f ~/.bash_aliases ]; then source ~/.bash_aliases; fi
