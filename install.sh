#!/bin/bash
curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.32.0/2024-12-20/bin/linux/amd64/kubectl
chmod +x ./kubectl
sudo mv ./kubectl /usr/bin/
sudo ln -s /usr/bin/kubectl /usr/local/bin/k
k version --client

yum install -y docker
usermod -a -G docker ec2-user
systemctl enable --now docker

curl https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash
