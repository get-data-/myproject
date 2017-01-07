#!/bin/bash

# Stop Nginx
isExistApp=`pgrep nginx`
if [[ -n  \$isExistApp ]]; then
   service nginx stop
fi  

echo "Stopped Server" >> codedeploy.log

