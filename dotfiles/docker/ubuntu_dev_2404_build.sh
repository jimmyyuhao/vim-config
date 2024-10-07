#!/bin/bash
# 获取当前日期
current_date=$(date +%Y%m%d)

# 定义文件名
filename="cpp_dev_ubuntu_2404_docker_image_${current_date}"
echo "remove exist container"
docker stop ubuntu-dev-2404 && docker rm ubuntu-dev-2404
echo "image building"
docker build -t ubuntu2404dev-base:latest -f ./ubuntu_dev_2404.dockerfile .
echo "image running"
docker run --security-opt seccomp=unconfined --name ubuntu-dev-2404 -idt  ubuntu2404dev-base:latest /bin/sh

echo "image execing"
docker exec -i ubuntu-dev-2404 bash -c "apt-get -y install apt-utils dialog curl sudo net-tools iputils-ping ssh sshfs flex bison gawk locales"
docker exec -i ubuntu-dev-2404 bash -c "apt-get -y install xserver-xorg-hwe-18.04 xserver-xorg-core xserver-xorg-input-all xorgxrdp xrdp xfce4 xfce4-goodies"
docker exec -i ubuntu-dev-2404 bash -c "apt-get -y install fonts-inconsolata universal-ctags cppcheck linux-tools-generic"
docker exec -i ubuntu-dev-2404 bash -c "apt-get -y install systemctl bash"
docker exec -i ubuntu-dev-2404 bash -c "apt-get -y install zh-autoconvert zhcon xvfb firefox fcitx goldendict xfdashboard xfdashboard-plugins"
docker exec -i ubuntu-dev-2404 bash -c "apt-get -y install libssl-doc libssl-dev libssl* libgtk2.0-dev libfuse2 libltdl7 liborcus* libncurses6 libncurses-dev libevent-2.1-7 libevent-dev libxt-dev libpqxx-dev"
docker exec -i ubuntu-dev-2404 bash -c "apt-get -y install libboost-all-dev build-essential ninja-build doxygen linux-source cmake git pkg-config autogen expect man-db cppman silversearcher-ag graphviz astyle kdiff3 zsh tmux clang gcc npm python3 python3-venv python3-pip global cppcheck xsel xclip vim vim-gui-common ruby-all-dev golang cargo rustc default-jre default-jdk maven gradle"
docker exec -i ubuntu-dev-2404 bash -c "locale-gen en_US.UTF-8"
docker exec -i ubuntu-dev-2404 bash -c "chown root:root /usr/bin/sudo"  # 更改所有权到 root 用户和组
docker exec -i ubuntu-dev-2404 bash -c "chmod 4755 /usr/bin/sudo"       # 设置 setuid 权限位和正确的权限
docker exec -i ubuntu-dev-2404 bash -c "gpasswd -a ubuntu docker"
docker exec -i ubuntu-dev-2404 bash -c "gpasswd -a ubuntu sudo"
docker exec -i ubuntu-dev-2404 bash -c "sed -i '/User privilege specification/a ubuntu\tALL=(ALL:ALL) ALL' /etc/sudoers"
docker exec -i ubuntu-dev-2404 bash -c "touch /home/ubuntu/.xsession && chmod 777 /home/ubuntu/.xsession && echo \"xfce4-session\" > /home/ubuntu/.xsession"
# docker exec -i ubuntu-dev-2404 bash -c "sed -i 's#http://mirrors.example.com.cn/#http://mirrors.aliyun.com/#' /etc/apt/sources.list.d/ubuntu.sources"
# docker exec -i ubuntu-dev-2404 bash -c "touch /etc/apt/apt.conf.d/95proxies && echo 'Acquire::http::Proxy \"http://username:passwd@proxy.example.com.cn:80\";' > /etc/apt/apt.conf.d/95proxies"
docker exec -i ubuntu-dev-2404 bash -c "sed -i 's/^#\s*X11UseLocalhost yes/X11UseLocalhost no/' /etc/ssh/sshd_config"
docker exec -i ubuntu-dev-2404 bash -c "wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && dpkg -i google-chrome-stable_current_amd64.deb && rm google-chrome-stable_current_amd64.deb"

echo "image saving"
docker export -o ~/myimage/docker/$filename.tar ubuntu-dev-2404
docker import ~/myimage/docker/$filename.tar cpp_dev_2404:$current_date
