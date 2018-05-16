#!/bin/sh

docker run -itd \
--restart=always \
--net=host \
--privileged=true \
--name=strongswan-magireco \
-e IPSEC_DNS1=192.168.142.254 \
-e IPSEC_DNS2=101.6.6.6 \
-e IPSEC_CLIENT_ADDR=10.250.20.0/24 \
-e IPSEC_PSK=magireco.moe \
-e XAUTH_USER=qb \
-e XAUTH_PASS=magireco \
yangzhaofengsteven/strongswan-magireco
