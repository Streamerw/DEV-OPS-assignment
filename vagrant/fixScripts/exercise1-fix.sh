#!/bin/bash
#add fix to exercise1 here
# the issue iswith the static route 
ip route show
sudo route del 208.86.224.90
ip route show
curl http://www.textfiles.com/art/bnbascii.txt