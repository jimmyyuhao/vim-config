FROM ubuntu:24.04

# 设置代理服务器的环境变量
# ENV http_proxy=http://username:password@proxyserver.com.cn:portnum
# ENV https_proxy=https://username:password@proxyserver.com.cn:portnum
# ENV all_proxy=socks://username:password@proxyserver.com.cn:portnum
# ENV ftp_proxy=ftp://username:password@proxyserver.com.cn:portnum
# ENV no_proxy=10.*.*.*,localhost,127.0.0.0/8,::1,10.0.0.0/8,example.com.cn,example.intra,*example.intra,10.192.45.187,*.example.com.cn,.example.com.cn
ENV DEBIAN_FRONTEND=noninteractive

RUN sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/#' /etc/apt/sources.list.d/ubuntu.sources
# RUN sed -i 's#http://archive.ubuntu.com/#http://mirrors.example.com.cn/#' /etc/apt/sources.list.d/ubuntu.sources
RUN cat /etc/apt/sources.list.d/ubuntu.sources

RUN rm -f /etc/apt/apt.conf.d/docker-clean
RUN groupadd docker --gid 113
RUN apt-get update
RUN echo 'ubuntu:Bspbsp.13579' | chpasswd
RUN echo "done"

ENTRYPOINT ["/bin/bash", "-l", "-c"]
