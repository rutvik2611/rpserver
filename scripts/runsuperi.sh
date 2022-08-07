#!/bin/bash



echo "-----------------------------------------------------------------------------------------------------------------------"
echo "Have You Copied ENV file?????"
echo "-----------------------------------------------------------------------------------------------------------------------"

cd /root/rpserver/traefik/data
chmod 600 acme.json
cd /root/rpserver/traefik

docker-compose up -d
echo "-----------------------------------------------------------------------------------------------------------------------"
echo "Traefik is up tr.${DOMAIN}"
echo "-----------------------------------------------------------------------------------------------------------------------"
cd /root/rpserver/portainer
docker-compose up -d
echo "-----------------------------------------------------------------------------------------------------------------------"
echo "portainer  is up p.${DOMAIN}"
echo "-----------------------------------------------------------------------------------------------------------------------"
cd /root/rpserver/code-server
docker-compose up -d
echo "-----------------------------------------------------------------------------------------------------------------------"
echo "portainer  is up code.${DOMAIN}"
echo "-----------------------------------------------------------------------------------------------------------------------"


