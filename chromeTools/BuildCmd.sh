#!/bin/bash/
CURDIR=$(cd "$(dirname "$0")";pwd)
echo in $CURDIR

sudo apt-get install google-chrome-stable
#将下载源添加到系统源中。
sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/

#导入google软件公钥。
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -

#更新系统列表获得最新软件版本信息。
sudo apt-get update

#安装稳定版google
sudo apt-get install google-chrome-stable

#启动谷歌 Chrome 浏览器
#/usr/bin/google-chrome-stable

tar -xvf $CURDIR/node-v10.15.3
cd $CURDIR/node-v10.15.3
./configure
make
sudo make install

sudo apt install npm
sudo npm install --global coffeescript@~1
cd $CURDIR/vimium
cmake build
