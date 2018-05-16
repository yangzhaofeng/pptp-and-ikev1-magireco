#!/bin/bash

docker run -itd \
--restart=always \
--privileged \
--net=host \
-e PPP_USER=qb \
-e PPP_PASS=magireco \
-e MS_DNS1=8.8.8.8 \
-e MS_DNS2=8.8.4.4 \
-e LOCAL_SUBNET=10.250.80 \
yangzhaofengsteven/pptpd
