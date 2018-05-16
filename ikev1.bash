#!/bin/sh

docker run -itd \
--restart=always \
--net=host \
--privileged=true \
--name=strongswan-magireco \
-e IPSEC_DNS1=8.8.8.8 \
-e IPSEC_DNS2=8.8.4.4 \
-e IPSEC_CLIENT_ADDR=10.250.20.0/24 \
-e IPSEC_PSK=magireco.moe \
-e XAUTH_USER=qb \
-e XAUTH_PASS=magireco \
yangzhaofengsteven/strongswan-magireco
