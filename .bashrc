set -o vi

export EDITOR='/usr/local/bin/mvim'
export PATH="$HOME/.rbenv/bin:$PATH:~/bin:/usr/local/sbin:~/bin::/usr/local/share/npm/bin"
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

export NODE_PATH=/usr/local/lib/node_modules:/usr/local/share/npm/lib/node_modules

[[ -r $HOME/.nvm/nvm.sh ]] && source $HOME/.nvm/nvm.sh

if [ -f ~/.bash_aliases ]; then source ~/.bash_aliases; fi

if [ -f ~/dotfiles/git-completion.bash ]; then source ~/dotfiles/git-completion.bash; fi

export PS1='\h:\W \u$(__git_ps1 " (\[\e[0;36m\] %s \[\e[m\])") \$ '
