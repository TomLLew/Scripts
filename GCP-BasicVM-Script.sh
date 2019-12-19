#! /bin/bash
echo "Pick a VM name: "
read name
gcloud compute instances create ${name}
sleep 5
gcloud compute ssh ${name} << EOF
sudo apt-get -y update 
sudo apt-get install git -y
sudo apt-get install python3.7 -y
sudo apt-get install python3-pip -y
EOF
gcloud compute ssh ${name}