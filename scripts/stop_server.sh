#!/bin/bash

isExistApp=`pgrep nginx`
if [[ -n  \$isExistApp ]]; then
   service nginx stop
fi  

# Remove Previous Build
rm -rf /home/ubuntu/myproject
