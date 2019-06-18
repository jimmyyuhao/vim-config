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
#or https://ubuntu.pkgs.org/14.04/ubuntu-main-amd64/xterm_297-1ubuntu1_amd64.deb.html  use sudo dpkg -i ./xxx.deb
