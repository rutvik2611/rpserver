#!/bin/bash
cd rpserver/traefik/data/

chmod 600 acme.json

# shellcheck disable=SC2103
cd ..
docker-compose down
docker-compose up -d

echo "-----------------------------------------------------------------------------------------------------------------------"
echo "                                      traefik is up                                                                             "
echo "-----------------------------------------------------------------------------------------------------------------------"



