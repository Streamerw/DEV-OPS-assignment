#!/bin/bash
#add fix to exercise2 here
#example2 - access forbidden error - the site is added to the blocked hosts list
#the solution is to remove the site from hosts list.
# open hosts 
# comment the IP: '127.0.0.1 www.ascii-art.de' to
cd /etc
sudo sed -i '11 s/^/#/' hosts

curl http://www.ascii-art.de/ascii/ab/007.txt