#!/bin/bash

# Update existing list of packages
sudo apt update
sudo apt upgrade -y

# Install prerequisite packages
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up the Docker stable repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] \
  https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package index with Docker packages from the new repo
sudo apt update

# Install Docker Engine
sudo apt install docker-ce docker-ce-cli containerd.io -y

# Enable Docker service
sudo systemctl enable docker
sudo systemctl start docker

# Optional: Add current user to the docker group to run docker without sudo
sudo usermod -aG docker root

echo "Docker installation completed. Please log out and log back in to apply group changes."
