#!/bin/bash
CURDIR=$(cd "$(dirname "$0")";pwd)
echo in $CURDIR

#BEAR install Cmd ##do not install manully(work inproperly) ,use apt-get install
#cd $CURDIR/Bear
#mkdir ./build
#cd build
#make 
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
#原因是我系统中有两个 ctags。其中一个是 exuberant-ctags,要确保/usr/bin下的是自己需要的，没有就创建软连接
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
cd $CURDIR/the_silver_searcher
sudo apt-get install libpcre3-dev
sudo apt-get install liblzma-dev
./autogen.sh
./configure
make
#sudo make install # to install

#the astyle install Cmd
cd $CURDIR/astyle
tar -xvf astyle_3.1_linux.tar.gz
cd astyle/build
cmake ./../
make
sudo make install

#pip install Cmd
cd $CURDIR/pip
python get-pip.py --proxy=https://usr:pwd@proxy.abc.com:80
pip install Pygments --proxy=https://usr:pwd@proxy.abc.com:80

#pygment install Cmd
cd $CURDIR/Pygments
pip install Pygments

#
