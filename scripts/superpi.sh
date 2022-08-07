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
docker network create proxy
echo "-----------------------------------------------------------------------------------------------------------------------"
echo "                                       Network Called Proxy - for sharing Traefik                                                                              "
echo "-----------------------------------------------------------------------------------------------------------------------"

echo "-----------------------------------------------------------------------------------------------------------------------"
echo "Please Copy ENV file next to all docker-compose files and relavent YML"
echo "-----------------------------------------------------------------------------------------------------------------------"
echo "Copy ENV "
echo "Copy ENV "
echo "Copy ENV "
echo "Copy ENV "
sudo adduser low --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "low:password" | sudo chpasswd
git clone https://github.com/rutvik2611/rpserver.git
chmod +x /root/rpserver/scripts/runsuperi.sh
echo "-----------------------------------------------------------------------------------------------------------------------"
echo "Please Copy ENV file next to all docker-compose files and relavent YML"
echo "-----------------------------------------------------------------------------------------------------------------------"
echo "Copy ENV "
echo "Copy ENV "
echo "Copy ENV "
echo "Copy ENV "
# shellcheck disable=SC2164
cd /root/rpserver/scripts/
