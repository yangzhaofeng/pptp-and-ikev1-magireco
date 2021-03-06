#!/bin/bash

if [ `command -v docker |wc -l` -ne 1 ];then
apt-get update
apt-get install \
	apt-transport-https \
	ca-certificates \
	curl \
	software-properties-common
curl -fsSL https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
	"deb [arch=amd64] https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu \
	$(lsb_release -cs) \
	stable"
apt-get update
apt-get install -y docker-ce
mkdir /etc/docker
touch /etc/docker/daemon.json
echo '{' >> /etc/docker/daemon.json
echo '	'"registry-mirrors": ["https://docker.mirrors.ustc.edu.cn/"] >> /etc/docker/daemon.json
echo '}' >> /etc/docker/daemon.json
systemctl restart docker
mkdir /srv/docker
fi
