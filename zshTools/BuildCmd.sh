#!/bin/bash
CURDIR=$(cd "$(dirname "$0")";pwd)
echo in $CURDIR
git clone https://github.com/robbyrussell/oh-my-zsh.git ./oh-my-zsh
cp $CURDIR/oh-my-zsh/templates/zshrc.zsh-template $CURDIR/.zshrc
rm -rf ~/.oh-my-zsh
ln -s $CURDIR/oh-my-zsh ~/.oh-my-zsh
#if unsafe message print after zsh start
# cd ./oh-my-zsh/ && compaudit | xargs chmod g-w,o-w
