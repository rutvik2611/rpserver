#!/bin/bash
cd rpserver/traefik/data/

chmod 600 acme.json

# shellcheck disable=SC2103
cd ..
docker-compose up -d
cd ..
cd portainer/
docker-compose up -d


