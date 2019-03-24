#!/bin/bash
sudo apt-get install xrdp vnc4server xbase-clients
sudo apt-get install tightvncserver xrdp
sudo apt-get install xfce4-session
sudo apt-get install libglib2.0-bin
sudo apt-get install libpulse-dev
sudo apt-get install gedit
gedit /etc/xrdp/startwm.sh
touch ~/.xsession
echo xfce4-session >~/.xsession
sudo rm /var/run/xrdp/xrdp.pid 
sudo /etc/init.d/xrdp restart
