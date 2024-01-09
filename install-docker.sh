#!/bin/bash

sudo apt update

# Install packages to allow apt to use a repository over HTTPS:
sudo apt install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository:
echo "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee /etc/apt/sources.list.d/docker.list

# Update the apt package index:
sudo apt update

# Install the latest version of Docker CE and containerd:
sudo apt install -y docker-ce docker-ce-cli containerd.io

# Add user to docker group:
sudo usermod -aG docker $USER

# Restart docker service:
sudo systemctl restart docker
