date=`date "+%Y%m%d-%H%M%S"`
cd ~
if [ -d ~/dotfiles ]; then
  mv ~/dotfiles ~/dotfiles.$date
fi
git clone git://github.com/mikeadmire/dotfiles.git ~/dotfiles

# sym link dotfiles to home directory
for i in .aliases .bash_profile .bashrc .zshrc .gitignore_global .gitconfig
do
  if [ -e $i ] || [ -h $i ]
  then
    mv $i $i.$date
  fi
  ln -s ~/dotfiles/$i
done
