#!/bin/bash
sudo apt-get install gettext
sudo apt-get install libxt-dev
sudo apt-get install libgtk2.0-dev
sudo apt-get install libgnome2-dev
cd ./vim
./configure --disable-selinux --enable-perlinterp=yes --enable-pythoninterp --enable-rubyinterp=yes --enable-cscope --enable-gui=auto --with-features=huge --enable-multibyte --enable-xim --with-x --with-gnome --with-compiledby="goodfish" --prefix=/usr/local/

make
sudo make install
sudo mv /usr/local/bin/vim /usr/local/bin/vim_bak
sudo ln -s  /usr/local/vim8/bin/vim /usr/local/bin/vim
