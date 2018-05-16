#!/bin/bash

docker run -itd \
--restart=always \
--privileged \
--net=host \
-e PPP_USER=qb \
-e PPP_PASS=magireco \
-e MS_DNS1=192.168.142.254 \
-e MS_DNS2=101.6.6.6 \
-e LOCAL_SUBNET=10.250.80 \
yangzhaofengsteven/pptpd
