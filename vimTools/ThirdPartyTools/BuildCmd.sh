#!/bin/bash
DIR=$(pwd)

echo enter $DIR

#BEAR install Cmd
cd  $DIR/Bear
mkdir ./build
cd build
cmake ./../bear
make all
#sudo make install # to install

#connect install Cmd
cd $DIR/connect/gotoh-connect-2e080df38b35
make all
#sudo make install # to install

#cppcheck install Cmd
cd $DIR/cppcheck
make all
#sudo make install # to install

#ctags install Cmd
cd $DIR/ctags
./autogen.sh
./configure
make
#sudo make install # to install

#the_silver_searcher install Cmd
cd $DIR/the_silver_searcher
./autogen.sh
./configure
make
#sudo make install # to install

#gdb install Cmd
cd $DIR/gdb
tar -xvf ./gdb-8.2.tar.xz
cd ./gdb-8.2
./configure
make
#sudo make install # to install

#pip install Cmd
cd $DIR/pip
python ./get-pip.py

#pygment install Cmd
cd $DIR/Pygments
pip install Pygments

#gtags install Cmd
cd $DIR/gnu-global/source-linux/
tar -xvf ./global-6.6.3.tar.gz
cd ./global-6.6.3/
./configure
make CFLAGS+=-std=c99
make
make CFLAGS+=-std=c99
#sudo make install # to install
#

