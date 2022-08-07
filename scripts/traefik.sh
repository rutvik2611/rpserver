#!/bin/bash
cd /root/rpserver/traefik/data/

chmod 600 acme.json
cd /root/rpserver/traefik/
docker-compose down
docker-compose up -d

echo "-----------------------------------------------------------------------------------------------------------------------"
echo "                                      traefik is up                                                                             "
echo "-----------------------------------------------------------------------------------------------------------------------"



