# Install Docker and Docker Compose

Apenas rode o script e confirme (y) o que pedir e o docker e o docker-compose serão instalados corretamente na maquina.


# To use GPU with Docker
- If you do not have the driver of  the GPU installed. Try to use `$nvidia-smi`, if works you already have the driver installed, if not ([a good tutorial](https://linuxconfig.org/how-to-install-the-nvidia-drivers-on-ubuntu-20-04-focal-fossa-linux)):
    `sudo ubuntu-drivers autoinstall`

- Follow this instruction to install the cuda toolkit: https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/install-guide.html#docker