#!/bin/bash

# Hunt for nginx processes and agressively kill them
isExistApp=`pgrep nginx`  
if [[ -n  \$isExistApp ]]; then  
   killall -9 nginx
fi  

