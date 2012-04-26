#!/bin/bash    

# first backup existing stuff if any
mv ~/.bashrc    ~/.bashrc.old
mv ~/.zshrc     ~/.zshrc.old

# build some basic paths
mkdir -p ~/bin
mkdir -p ~/src
mkdir -p ~/lib

# get muh dotfilez
# git clone http://bitbucket.org/galt32/cfg ~/lib/cfg

# build some vim paths
mkdir -p $HOME/lib/cfg/vim/tmp/undo
mkdir -p $HOME/lib/cfg/vim/tmp/backup
mkdir -p $HOME/lib/cfg/vim/tmp/swap
mkdir -p $HOME/lib/cfg/vim/bundle

#---------------------------------
# Link everything to muh cfg dir
#---------------------------------

ln -s "$HOME/lib/cfg/.zshrc"             "$HOME/.zshrc"
ln -s "$HOME/lib/cfg/.bashrc"            "$HOME/.bashrc"
ln -s "$HOME/lib/cfg/vim"                "$HOME/.vim"
ln -s "$HOME/lib/cfg/vim/vimrc"          "$HOME/.vimrc"

ln -s "$HOME/lib/cfg/.gitconfig"         "$HOME/.gitconfig"
ln -s "$HOME/lib/cfg/.gitignore_global"  "$HOME/.gitignore_global"
ln -s "$HOME/lib/cfg/.hgrc"              "$HOME/.hgrc"
ln -s "$HOME/lib/cfg/.hgignore_global"   "$HOME/.hgignore_global"


#------------------------------
# Python related stuff
#------------------------------
mkdir -p ~/lib/python
mkdir -p ~/lib/virtualenvs

hg clone http://bitbucket.org/ianb/pip/ ~/lib/python/pip

cd ~/lib/python/pip
sudo python setup.py install
cd

sudo pip install virtualenv

# TODO: Add stuff to configure ruby automatically
# TODO: Make stuff more dynamic so we can support mutliple systems

