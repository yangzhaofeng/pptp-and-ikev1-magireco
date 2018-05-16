#!/bin/bash

ip a add 192.168.142.254 dev lo
git clone https://github.com/yangzhaofeng/bind-magireco.git /srv/docker/bind
cp named.conf.options /srv/docker/bind/
docker run -itd \
	--restart=always \
	--name=bind9 \
	--net=host \
	--privileged \
	-v /srv/docker/bind:/etc/bind \
	yangzhaofengsteven/bind9
