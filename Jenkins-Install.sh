#! /bin/bash

sudo apt-get -y update 
sudo apt-get install openjdk-8-jdk -y
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sleep 5
sudo apt update
sudo apt install jenkins -y
sleep 20
sudo chmod 777 /var/lib/jenkins/secrets/initialAdminPassword
sudo cat /var/lib/jenkins/secrets/initialAdminPassword > adminpass.txt
sudo add-apt-repository ppa:ubuntu-toolchain-r/ppa -y
sudo apt update

