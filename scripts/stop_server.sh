#!/bin/bash

# Stop Nginx
isExistApp=`pgrep nginx`
if [[ -n  \$isExistApp ]]; then
   service nginx stop
fi  

timestamp() {
  date +"%T"
}
FTIME = timestamp
echo "$FTIME: Stopped Server" > codedeploy.log

