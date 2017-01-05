#!/bin/bash

cd /home/ubuntu/myproject/scripts

# Create a list of files that need to be removed
# Exclude myproject.sock or we enter the 502 bad gateway to hell
sudo python makelist.py
sudo python cleanup.py

# Move to project directory and remove app folders
cd /home/ubuntu/myproject
sudo rm -rf scripts
sudo rm -rf sample
sudo rm -rf __pycache__
