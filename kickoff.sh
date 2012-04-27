#!/bin/bash    
# TODO: Ask and interact w/ the user (e.g. "do u wanna do the python part? [Y/n]")
# TODO: Add stuff to configure ruby automatically
# TODO: Make stuff more dynamic so we can support mutliple systems

# first backup existing stuff if any
mv ~/.bashrc    ~/.bashrc.old
mv ~/.zshrc     ~/.zshrc.old

# build some basic paths
mkdir -p ~/bin
mkdir -p ~/src
mkdir -p ~/lib
mkdir -p $HOME/lib/cfg/vim/tmp/undo
mkdir -p $HOME/lib/cfg/vim/tmp/backup
mkdir -p $HOME/lib/cfg/vim/tmp/swap
mkdir -p $HOME/lib/cfg/vim/bundle


# get muh dotfilez
git clone git://github.com/bogor/dotfiles.git ~/lib/cfg
git clone git://github.com/bogor/oh-my-zsh.git ~/.oh-my-zsh

# get some repo submodules (vim bundles)
cd ~/lib/cfg
git submodule init
git submodule update

#---------------------------------
# Link everything to muh cfg dir
#---------------------------------

ln -sf "$HOME/lib/cfg/zshrc"             "$HOME/.zshrc"
ln -sf "$HOME/lib/cfg/bashrc"            "$HOME/.bashrc"
ln -sf "$HOME/lib/cfg/vim"                "$HOME/.vim"
ln -sf "$HOME/lib/cfg/vim/vimrc"          "$HOME/.vimrc"

ln -sf "$HOME/lib/cfg/gitconfig"         "$HOME/.gitconfig"
ln -sf "$HOME/lib/cfg/gitignore_global"  "$HOME/.gitignore_global"
ln -sf "$HOME/lib/cfg/hgrc"              "$HOME/.hgrc"
ln -sf "$HOME/lib/cfg/hgignore_global"   "$HOME/.hgignore_global"


#------------------------------
# Python related stuff -- currently disabled
#------------------------------
#mkdir -p ~/lib/python
#mkdir -p ~/lib/virtualenvs

#hg clone http://bitbucket.org/ianb/pip/ ~/lib/python/pip

#cd ~/lib/python/pip
#sudo python setup.py install
#cd

#sudo pip install virtualenv


