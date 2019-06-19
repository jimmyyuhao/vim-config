
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


#6  vim.tiny /etc/xrdp/sesman.ini
#中间修改
#MaxSessions=1000
#在末尾加上：
#param8=-SecurityTypes
#param9=None

#5. 重启 xrdp
sudo service xrdp restart

#7 在远程桌面中设置，打开菜单->设置->窗口管理器，或者在终端中输入xfwm4-settings打开（xfwm4就是xfce4 window manger的缩写）
#选择键盘，可以看到窗口快捷键中动作一列有“切换同一应用程序的窗口”选项，将该选项的快捷键清除后关闭窗口即可。
#到此，Tab键自动补全功能配置完成。
#8. 最后测试远程链接
