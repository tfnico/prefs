#!/bin/zsh
echo "If you are at work make sure that the git-email remains the work mail!!"
cp -i -v gitconfig ~/.gitconfig
cp -i -v vimrc.before ~/.vimrc.before
cp -i -v vimrc ~/.vimrc
cp -i -v vimrc.after ~/.vimrc.after
cp -i -v profile ~/.profile
cp -i -v zshrc ~/.zshrc
cp -i -v subversion-config ~/.subversion/config
#cp -R vim/ ~/.vim
cp -v -R bin-source/* ~/bin
