#!/bin/bash
sed -i -e 's/socks4/socks5/g' /etc/proxychains.conf
sed -i -e 's/127.0.0.1/45.63.115.127/g' /etc/proxychains.conf
sed -i -e 's/9050/1080/g' /etc/proxychains.conf
