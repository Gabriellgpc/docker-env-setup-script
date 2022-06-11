#install
# docker
# https://docs.docker.com/engine/install


# Update the apt package index and install packages to allow apt to use a repository over HTTPS:
sudo apt-get update


sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release


# Add Docker’s official GPG key:
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg


# Use the following command to set up the repository:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null


# Install Docker Engine

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Verify that Docker Engine is installed correctly by running the hello-world image.
sudo docker run hello-world

# Manage Docker as a non-root user
sudo groupadd docker

sudo usermod -aG docker $USER

newgrp docker 

docker run hello-world

# docker-compose

sudo apt install docker-compose