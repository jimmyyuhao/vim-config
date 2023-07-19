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
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

