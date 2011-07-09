cd ~
mv ~/dotfiles ~/dotfiles.old
git clone git://github.com/mikeadmire/dotfiles.git ~/dotfiles
for i in .bash_aliases .bash_profile .gemrc .gvimrc.local .janus.rake .bashrc .vimrc.local
do
  if [ -e $i ] || [ -h $i ]
  then
    mv $i $i.old
  fi
  ln -s ~/dotfiles/$i
done
