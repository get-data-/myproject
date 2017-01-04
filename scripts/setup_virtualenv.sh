#!/bin/bash

# Install Virtual Environment for Python
sudo pip3 install virtualenv

# Create a Virtual Environment and install app reqs
cd /home/ubuntu/myproject
virtualenv myprojectenv
source myprojectenv/bin/activate
pip install -r /home/ubuntu/myproject/requirements.txt

