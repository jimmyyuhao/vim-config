#!/bin/bash

#BEAR install Cmd
cd ./Bear
mkdir ./build
cd build
cmake ./../bear
make all
sudo make install # to install


#

