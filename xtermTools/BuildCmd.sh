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

#需要手动安装monoca字体
#Linux安装字体的方式其实很简单，就是调用
#fc-cache -f -v
#命令，其实我们可以什么都不添加直接调用这个命令可以看到它会去/usr/share/fonts/truetype等目录以及你自己的个人用户目录~/.fonts/   ~/.local/share/fonts ~/.fontconfig ~/.cache/fontconfig等目录进行字体文件ttf的索引查找，当查找到字体之后就完成了字体的添加。
#所以很简单了，上网下载monaco.ttf文件，https://www.fontpalace.com/font-download/Monaco/ 将它放到上述提到的任意文件夹中，然后运行一把fc-cache -fv即完成了字体的添加。
