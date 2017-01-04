#!/bin/bash

isExistApp=`pgrep nginx`
if [[ -n  \$isExistApp ]]; then
   service nginx stop
fi  

# Remove Previous Build
sudo rm -rf /home/ubuntu/myproject
sudo rm /etc/systemd/system/myproject.service
sudo rm /etc/nginx/sites-available/myproject
sudo rm /etc/nginx/sites-enabled/myproject
