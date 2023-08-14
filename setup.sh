#!/bin/bash

# Install Docker and Docker Compose
sudo chmod +x install-docker-docker-compose.sh
./install-docker-docker-compose.sh

# Install and Configure Nginx
sudo chmod +x install-and-configure-nginx.sh
./install-and-configure-nginx.sh

# Configure Firewalls
sudo chmod +x configure-firewall.sh
./configure-firewall.sh