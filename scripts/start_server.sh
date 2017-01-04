#!/bin/bash

# Create a systemd Unit File
echo "[Unit]
Description=uWSGI instance to serve myproject
After=network.target

[Service]
User=ubuntu
Group=www-data
WorkingDirectory=/home/ubuntu/myproject
Environment=\"PATH=/home/ubuntu/myproject/myprojectenv/bin\"
PrivateTmp=false
ExecStart=/home/ubuntu/myproject/myprojectenv/bin/uwsgi --ini myproject.ini

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/myproject.service

# Start uWSGI service we created and enable it so that it starts at boot
sudo systemctl start myproject
sudo systemctl enable myproject

# Configuring Nginx to Proxy Requests
SOCK_PATH="/home/ubuntu/myproject/myproject.sock"
SERVER_IP=$(curl http://169.254.169.254/latest/meta-data/public-ipv4)
echo "server {
    listen 80;
    server_name $SERVER_IP;

    location / {
        include uwsgi_params;
        uwsgi_pass unix:$SOCK_PATH;
    }
}" > /etc/nginx/sites-available/myproject

# Enable Nginx server block config - link the file to the sites-enabled directory
sudo ln -s /etc/nginx/sites-available/myproject /etc/nginx/sites-enabled

# Restart the Nginx process to read the our new config
sudo systemctl restart nginx

#Allow Access to Nginx Server
sudo ufw delete allow 5000
sudo ufw allow 'Nginx Full'
