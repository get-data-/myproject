#!/bin/bash

# Stop Nginx
isExistApp=`pgrep nginx`
if [[ -n  \$isExistApp ]]; then
   service nginx stop
fi  

timestamp() {
  date +"%T"
}

echo "$timestamp: Stopped Server" > codedeploy.log

