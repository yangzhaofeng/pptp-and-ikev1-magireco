#!/bin/bash

iptables -t nat -A POSTROUTING -s 10.250.0.0/16 ! -d 10.250.0.0/16 -j MASQUERADE

#iptables -t filter -A FORWARD -d 10.250.0.0/16 -p tcp -m tcp --tcp-flags RST,ACK RST,ACK -j DROP
