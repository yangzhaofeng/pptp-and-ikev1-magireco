#!/bin/bash

ip a add 192.168.142.1 dev lo
mkdir /srv/docker/sniproxy
mkdir /srv/docker/sniproxy/conf
mkdir /srv/docker/sniproxy/log
cp sniproxy.conf /srv/docker/sniproxy/conf/

docker run -itd \
	--restart=always \
	--name=sniproxy \
	--net=host \
	-v /srv/docker/sniproxy/conf:/etc/sniproxy \
	-v /srv/docker/sniproxy/log:/var/log \
	gaoyifan/sniproxy
