#!/bin/bash
#add fix to exercise3 here
# appache server has wrong policy configurations at /etc/apache2/sites-available/default
# DocumentRoot  Directory /var/www - configuration is set to "deny from all"
# this script should change this policy to "allow from all"
cd /etc/apache2/sites-available

sudo sed -i -e '13 s/deny from all/allow from all/g' /default
sudo /etc/init.d/apache2 restart