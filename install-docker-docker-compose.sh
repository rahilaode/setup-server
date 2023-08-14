#!/bin/bash

echo "Docker and Docker Compose Installation start"

echo -e "\n============================== \nUpdate package index \n=============================="
sudo apt update
echo -e "============================== \nUpdate package index Completed !!! \n==============================\n\n"

echo -e "============================== \nInstall prerequisites \n=============================="
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
echo -e "============================== \nInstall prerequisites Completed !!! \n==============================\n\n"

echo -e "============================== \nAdd Docker GPG key \n=============================="
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo -e "============================== \nAdd Docker GPG key Completed !!! \n==============================\n\n"

echo -e "============================== \nAdd Docker repository \n=============================="
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
echo -e "============================== \nAdd Docker repository Completed !!! \n==============================\n\n"

echo -e "============================== \nUpdate package index again \n=============================="
sudo apt update
echo -e "============================== \nUpdate package index again Completed !!! \n==============================\n\n"

echo -e "============================== \nInstall Docker \n=============================="
sudo apt install -y docker-ce docker-ce-cli containerd.io
echo -e "============================== \nInstall Docker Completed !!! \n==============================\n\n"

echo -e "============================== \nAdd your user to the 'docker' group to run Docker without sudo \n=============================="
sudo usermod -aG docker $USER
echo -e "============================== \nAdd your user to the 'docker' group to run Docker without sudo Completed !!! \n==============================\n\n"

echo -e "============================== \nInstall Docker Compose \n=============================="
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo -e "============================== \nInstall Docker Compose Completed !!! \n==============================\n\n"

# Verify Docker and Docker Compose installation
docker --version
docker-compose --version

echo "Docker and Docker Compose installation completed !!!"