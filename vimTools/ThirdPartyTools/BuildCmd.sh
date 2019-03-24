#!/bin/bash
CURDIR=$(cd "$(dirname "$0")";pwd)
echo in $CURDIR

#BEAR install Cmd
cd $CURDIR/Bear
mkdir ./build
cd build
cmake ./../bear
make all
#sudo make install # to install

#connect install Cmd
cd $CURDIR/connect/gotoh-connect-2e080df38b35/
make clean
make
#sudo make install # to install

#cppcheck install Cmd
cd $CURDIR/cppcheck/
mkdir ./build
cd build
cmake ./../
make
#sudo make install # to install

#ctags install Cmd
cd $CURDIR/ctags/
./autogen.sh
make
#sudo make install # to install

#gdb install Cmd
cd $CURDIR/gdb/
tar -xvf ./gdb-8.2.tar.xz
cd ./gdb-8.2/
./configure
make
#sudo make install # to install

#gnu-global install Cmd
cd $CURDIR/gnu-global/source-linux
tar -xvf ./global-6.6.3.tar.gz
cd ./global-6.6.3
./configure
make
make CFLAGS+=-std=c99
make
make CFLAGS+=-std=c99
#sudo make install # to install

#the_silver_searcher install Cmd
cd $DIR/the_silver_searcher
./autogen.sh
./configure
make
#sudo make install # to install

#pip install Cmd
cd $CURDIR/pip
python get-pip.py
pip install Pygments

#pygment install Cmd
cd $DIR/Pygments
pip install Pygments

#
