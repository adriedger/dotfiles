#!/bin/sh
#lets outside computers ssh into this crouton

sudo iptables -A INPUT -p tcp --dport 22 -j ACCEPT
sudo mkdir /var/run/sshd
sudo /usr/sbin/sshd
