#! /bin/bash

echo "Pick a VM name: "
read name
gcloud compute instances create ${name}
sleep 5
gcloud compute instances add-tags ${name} --tags=http-server
gcloud compute instances add-tags ${name} --tags=https-server
gcloud compute ssh ${name} << EOF
sudo apt-get -y update 
sudo apt-get install git -y
sudo apt-get install python3.7 -y
sudo apt-get install python3-pip -y
sudo apt-get install git -y
sudo curl https://get.docker.com | sudo bash
sudo curl -L "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker $(whoami)
echo "$(docker --version)"
echo "$(docker-compose --version)"
echo "restart terminal"
EOF
gcloud compute ssh ${name}

