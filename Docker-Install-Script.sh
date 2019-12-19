#! /bin/bash

sudo curl https://get.docker.com | sudo bash
echo "$(docker --version)"
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo "$(docker-compose --version)"
sudo usermod -aG docker $(whoami)
echo "restart terminal"