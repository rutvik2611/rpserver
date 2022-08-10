#!/bin/bash



echo "-----------------------------------------------------------------------------------------------------------------------"
echo "Have You Copied ENV file?????"
echo "-----------------------------------------------------------------------------------------------------------------------"

cd /root/rpserver/entertainment/jelly
docker-compose up -d
echo "-----------------------------------------------------------------------------------------------------------------------"
echo "Jellyfin is up jelly.${DOMAIN}"
echo "Note:Jelly Takes Time to boot"
echo "https://jelly.rutvik2611.com/web/index.html#!/wizardstart.html"
echo "https://jelly.DOMAIN.com/web/index.html#!/wizardstart.html"
echo "-----------------------------------------------------------------------------------------------------------------------"
cd /root/rpserver/entertainment/qbit
docker-compose up -d
echo "-----------------------------------------------------------------------------------------------------------------------"
echo "qbit is up qbit.${DOMAIN}"
echo "Default: Pass is admin:adminadmin"
echo "-----------------------------------------------------------------------------------------------------------------------"



