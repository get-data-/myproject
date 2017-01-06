#!/bin/bash

# Check for updates and install Python3 with Nginx
sudo apt-get update -y
sudo apt-get install python3-pip -y
sudo apt-get install python3-dev -y
sudo apt-get install nginx -y

timestamp() {
  date +"%T"
}

echo "$timestamp: Installed Dependencies" > codedeploy.log

