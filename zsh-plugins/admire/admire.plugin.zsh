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

gclone() {
  git svn clone svn+ssh://svn.uclick.com/usr/local/repo/$1 $2;
}

# dotfiles & dotvim
alias update-dotfiles='curl https://raw.github.com/mikeadmire/dotfiles/master/install.sh -o - | sh'
alias update-dotvim='curl https://raw.github.com/mikeadmire/dotvim/master/install.sh -o - | sh'
alias update-home_bin='curl https://raw.github.com/mikeadmire/home_bin/master/install.sh -o - | sh'

alias rake="noglob rake"

# turn off autocorrect for some commands
alias knife='nocorrect knife'


c() { cd ~/projects/mine/$1; }
_c() { _files -W ~/projects/mine -/; }
compdef _c c

uu() { cd ~/projects/uu/$1; }
_uu() { _files -W ~/projects/uu -/; }
compdef _uu uu
