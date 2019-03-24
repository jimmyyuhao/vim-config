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
#sudo make install # to install

#pip install Cmd
cd $CURDIR/pip
python get-pip.py
pip install Pygments

#the_silver_search install Cmd
cd $CURDIR/the_silver_search/
./autogen.sh
make
#sudo make install # to install
