#!/bin/bash

# Prereqs and docker
sudo apt-get update &&
    sudo apt-get install -yqq \
        curl \
        git \
        apt-transport-https \
        ca-certificates \
        gnupg-agent \
        software-properties-common \
        apache2-utils \
        filezilla
echo "-----------------------------------------------------------------------------------------------------------------------"
echo "Installed a bunch"
echo "-----------------------------------------------------------------------------------------------------------------------"

# Install Docker repository and keys
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "-----------------------------------------------------------------------------------------------------------------------"
echo "                                       Fingerprint Added                                                                                "
echo "-----------------------------------------------------------------------------------------------------------------------"

sudo add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) \
        stable" &&
    sudo apt-get update &&
    sudo apt-get install docker-ce docker-ce-cli containerd.io -yqq

# docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose &&
    sudo chmod +x /usr/local/bin/docker-compose &&
    sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

echo "-----------------------------------------------------------------------------------------------------------------------"
echo "                                       Fingerprint Added                                                                                "
echo "-----------------------------------------------------------------------------------------------------------------------"

# wirehole
git clone https://github.com/IAmStoxe/wirehole.git &&
    cd wirehole