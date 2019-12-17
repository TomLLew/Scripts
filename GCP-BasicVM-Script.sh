#! bin bash
echo "Pick a VM name: "
read name
gcloud compute instances create ${name}
gcloud compute ssh ${name} 