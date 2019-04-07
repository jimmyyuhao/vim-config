#!/bin/bash
CURDIR=$(cd "$(dirname "$0")";pwd)
echo in $CURDIR
cp $CURDIR/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
rm -rf ~/.oh-my-zsh
ln -s $CURDIR/oh-my-zsh ~/.oh-my-zsh
