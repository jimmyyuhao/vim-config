
#1. 安装xRDP及vncserver

sudo apt-get install xrdp
sudo apt-get install vnc4server tightvncserver 
#2. 安装Xfce桌面环境

sudo apt-get install xubuntu-desktop 
#3. 设置xRDP

echo xfce4-session >~/.xsession 
#4. 设置配置文件

sudo vim.tiny /etc/xrdp/startwm.sh
#在. /etc/X11/Xsession 前一行插入
#xfce4-session 

#5. 重启 xrdp
sudo service xrdp restart

#6  vim.tiny gedit /etc/xrdp/sesman.ini
#在末尾加上：
#param8=-SecurityTypes
#param9=None

#7. 最后测试远程链接
