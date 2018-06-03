#!/bin/bash

if [ `command -v docker |wc -l` -ne 1 ];then
yum makecache
yum install -y yum-utils \
  device-mapper-persistent-data \
  lvm2
yum-config-manager --add-repo https://mirrors.ustc.edu.cn/docker-ce/linux/centos/docker-ce.repo
sed -i 's/download.docker.com/mirrors.ustc.edu.cn\/docker-ce/g' /etc/yum.repos.d/docker-ce.repo
yum makecache
yum install -y docker-ce
mkdir /etc/docker
touch /etc/docker/daemon.json
echo '{' >> /etc/docker/daemon.json
echo '	'"registry-mirrors": ["https://docker.mirrors.ustc.edu.cn/"] >> /etc/docker/daemon.json
echo '}' >> /etc/docker/daemon.json
systemctl restart docker
mkdir /srv/docker
fi
