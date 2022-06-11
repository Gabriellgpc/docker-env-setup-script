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

echo "DOCKER AND DOCKER COMPOSE INSTALLED SUCCESSFULY"

echo "STEP 2: INSTALL CUDA TOOL KIT AND DOCKER COMPATIBILITY"

# Setting up NVIDIA Container Toolkit¶
distribution=$(. /etc/os-release;echo $ID$VERSION_ID) \
      && curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
      && curl -s -L https://nvidia.github.io/libnvidia-container/$distribution/libnvidia-container.list | \
            sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
            sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list

sudo apt-get update

sudo apt-get install -y nvidia-docker2

sudo systemctl restart docker

docker run --rm --gpus all nvidia/cuda:11.0.3-base-ubuntu20.04 nvidia-smi