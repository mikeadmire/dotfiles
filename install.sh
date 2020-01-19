date=`date "+%Y%m%d-%H%M%S"`
cd ~
if [ -d ~/dotfiles ]; then
  mv ~/dotfiles ~/dotfiles.$date
fi
git clone git://github.com/mikeadmire/dotfiles.git ~/dotfiles

# sym link dotfiles to home directory
for i in .bash_aliases .bash_profile .bashrc .zshrc .gitignore_global .gitconfig
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
    ln -s ~/dotfiles/zsh-plugins $ZSH_PLUGIN_DIR
  else
    rm -rf $ZSH_PLUGIN_DIR
    ln -s ~/dotfiles/zsh-plugins $ZSH_PLUGIN_DIR
  fi
fi
