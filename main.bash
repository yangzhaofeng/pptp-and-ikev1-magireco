#!/bin/bash

[ $(id -u) != "0" ] && { echo -e "\033[31mError: You must be root to run this script\033[0m"; exit 1; }

VPN_USER="qb"
VPN_PASS="magireco"

IKEPSK="magireco.moe"

source /etc/os-release

case $ID in
debian)
	bash docker-debian.bash
	;;
ubuntu)
	bash docker-ubuntu.bash
	;;
centos|rhel)
	bash docker-centos.bash
	;;
esac

bash sniproxy.bash

bash bind9.bash

bash pptp.bash

bash ikev1.bash

bash iptables-add.bash
