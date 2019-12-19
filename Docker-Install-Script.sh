#! /bin/bash

sudo curl https://get.docker.com | sudo bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker $(whoami)
echo "$(docker --version)"
echo "$(docker-compose --version)"
echo "restart terminal"