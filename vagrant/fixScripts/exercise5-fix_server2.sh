#!/bin/bash
#add fix to exercise5-server2 here
cd ~/.ssh/
ssh-keygen -t rsa -f "home/vagrant/.ssh/known_hosts" -q
chmod 600 "home/vagrant.ssh/id_rsa"
cat id_rsa.pub | ssh vargant@192.168.100.10 'cat >> .ssh/authorized_keys'
ssh vargant@192.168.100.10