#!/bin/bash/
ln -s ~/mytools/dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/mytools/dotfiles/vimrc/.vimrc  ~/.vimrc
ln -s ~/mytools/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/mytools/dotfiles/xterm/.Xdefaults ~/.Xdefaults
ln -s ~/mytools/dotfiles/xterm/.Xresources ~/.Xresources
ln -s ~/mytools/vimTools/.vim/  ~/.vim
ln -s ~/mytools/zshTools/.zshrc ~/.zshrc

sudo apt-get install xterm
sudo apt-get install tmux
sudo apt-get install vim
sudo apt-get install ttf-wqy-zenhei
