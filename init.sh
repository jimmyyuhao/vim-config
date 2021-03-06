#!/bin/bash
ln -s ~/mytools/dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/mytools/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/mytools/dotfiles/vimrc/.vimrc  ~/.vimrc
ln -s ~/mytools/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/mytools/dotfiles/xterm/.Xdefaults ~/.Xdefaults
ln -s ~/mytools/dotfiles/xterm/.Xresources ~/.Xresources
ln -s ~/mytools/vimTools/.vim/  ~/.vim
ln -s ~/mytools/tmuxTools/.tmux/  ~/.tmux

git submodule init
git submodule update
git submodule update --init  --recursive

sudo apt-get install xz-devel
sudo apt-get install binutils
sudo apt-get install binutils-dev
sudo apt-get install autogen
sudo apt-get install automake
sudo apt-get install autoconf
sudo apt-get install libtool
sudo apt-get install libiberty-dev

sudo apt-get install xterm
sudo apt-get install tmux
sudo apt-get install kdiff3
sudo apt-get install vim
sudo apt-get install zsh
sudo apt-get install connect-proxy
sudo apt-get install ttf-wqy-zenhei
