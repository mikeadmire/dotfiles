date=`date "+%Y%m%d-%H%M%S"`
cd ~
if [ -d ~/dotfiles ]
then
  mv ~/dotfiles ~/dotfiles.$date
fi
git clone git://github.com/mikeadmire/dotfiles.git ~/dotfiles

# add bundler-exec to .bashrc file
curl -L https://github.com/gma/bundler-exec/raw/master/bundler-exec.sh > ~/dotfiles/.bundler-exec.sh
echo "[ -f ~/dotfiles/.bundler-exec.sh ] && source ~/dotfiles/.bundler-exec.sh" >> ~/dotfiles/.bashrc

# sym link dotfiles to home directory
for i in .bash_aliases .bash_profile .gemrc .bashrc .autotest
do
  if [ -e $i ] || [ -h $i ]
  then
    mv $i $i.$date
  fi
  ln -s ~/dotfiles/$i
done
