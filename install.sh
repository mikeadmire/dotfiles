date=`date "+%Y%m%d-%H%M%S"`
cd ~
if [ -d ~/dotfiles ]; then
  mv ~/dotfiles ~/dotfiles.$date
fi
git clone git://github.com/mikeadmire/dotfiles.git ~/dotfiles

# add bundler-exec to .bashrc file
curl -L https://github.com/gma/bundler-exec/raw/master/bundler-exec.sh > ~/dotfiles/.bundler-exec.sh
echo "[ -f ~/dotfiles/.bundler-exec.sh ] && source ~/dotfiles/.bundler-exec.sh" >> ~/dotfiles/.bashrc

# sym link dotfiles to home directory
for i in .bash_aliases .bash_profile .gemrc .bashrc .autotest .tmux.conf .irbrc .zshrc .gitignore_global
do
  if [ -e $i ] || [ -h $i ]
  then
    mv $i $i.$date
  fi
  ln -s ~/dotfiles/$i
done

ZSH_PLUGIN_DIR='.oh-my-zsh/custom/plugins'
if [ -d $ZSH_PLUGIN_DIR ]; then
  if [ -L $ZSH_PLUGIN_DIR ]; then
    rm $ZSH_PLUGIN_DIR
  else
    rm -rf $ZSH_PLUGIN_DIR
  fi
fi
ln -s ~/dotfiles/zsh-plugins $ZSH_PLUGIN_DIR
