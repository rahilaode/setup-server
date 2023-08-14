#!/bin/bash

echo "Nginx installation and configuration start"

echo -e "\n============================== \nUpdate package index \n=============================="
sudo apt update
echo -e "============================== \nUpdate package index Completed !!! \n==============================\n\n"

echo -e "============================== \nInstall NGINX \n=============================="
sudo apt install -y nginx
echo -e "============================== \nInstall NGINX Completed !!! \n==============================\n\n"

echo -e "============================== \nStart and enable Nginx service \n=============================="
sudo systemctl start nginx
sudo systemctl enable nginx
echo -e "============================== \nStart and enable Nginx service Completed !!! \n==============================\n\n"

echo -e "============================== \nConfigure Reverse Proxy \n=============================="
sudo rm /etc/nginx/sites-available/default
sudo rm /etc/nginx/sites-enabled/default
sudo cp dashboard /etc/nginx/sites-available/dashboard
sudo ln -s /etc/nginx/sites-available/dashboard /etc/nginx/sites-enabled/
sudo systemctl restart nginx
echo -e "============================== \nConfigure Reverse Proxy Completed !!! \n==============================\n\n"

echo "Nginx installation and configuration completed. !!!"