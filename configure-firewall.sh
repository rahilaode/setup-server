#!/bin/bash

echo -e "============================== \nConfigure firewall to allow SSH, HTTP, HTTPS, FULL (port 80) traffic \n=============================="
sudo ufw allow 'OpenSSH'
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'Nginx HTTPS'
sudo ufw allow 'Nginx Full'
sudo ufw enable
echo -e "============================== \nConfigure firewall to allow SSH, HTTP, HTTPS, FULL (port 80) traffic Completed !!! \n==============================\n\n"
