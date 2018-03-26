#!/bin/sh
#lets outside computers ssh into this crouton
#needs to allow port 22 first on chromeshell -> /sbin/iptables -A INPUT -p tcp --dport 22 -j ACCEPT

sudo mkdir /var/run/sshd
sudo /usr/sbin/sshd
