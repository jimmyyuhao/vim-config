#!/bin/bash/
CURDIR=$(cd "$(dirname "$0")";pwd)
echo in $CURDIR
#https://github.com/tmux/tmux/wiki

#tmux depends on libevent and ncurses.
#http://libevent.org/
#https://invisible-island.net/ncurses/#download_ncurses

# tar -xvf ./libevent-2.1.8-stable.tar.gz
# cd ./libevent-2.1.8-stable
# ./configure
# make
# sudo make install
# 如果共享库文件安装到了/lib或/usr/lib目录下, 那么需执行一下ldconfig命令
# sudo ldconfig
#
# tar -xvf ./ncurses.tar.gz
# cd ./ncurses-6.1/
# ./configure
# make
# sudo make install


sudo apt-get remove tmux
sudo apt-get install libevent-dev
sudo apt-get install libncurses5-dev
sudo apt-get install xsel
sudo apt-get install xclip
sudo apt-get install gawk
cd $CURDIR/tmux/
sh autogen.sh
./configure && make
sudo make install
