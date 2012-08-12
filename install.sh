date=`date "+%Y%m%d-%H%M%S"`
cd ~
if [ -d ~/dotfiles ]
then
  mv ~/dotfiles ~/dotfiles.$date
fi
git clone git://github.com/mikeadmire/dotfiles.git ~/dotfiles
for i in .bash_aliases .bash_profile .gemrc .bashrc .autotest
do
  if [ -e $i ] || [ -h $i ]
  then
    mv $i $i.$date
  fi
  ln -s ~/dotfiles/$i
done
