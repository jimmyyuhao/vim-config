#!/bin/bash/
CURDIR=$(cd "$(dirname "$0")";pwd)
echo in $CURDIR

tar -xvf ./xterm.tar.gz
cd xterm-344
./configure
make && make install
Unable to successfully link Athena library

#:( ,because compile fail
#better use apt-get install xterm
