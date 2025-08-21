#!/bin/bash

#rm ./nginx_logs/access.log
#rm ./nginx_logs/error.log


### get wg0

echo -e "\n wg0.conf'\n"

cat ./wg_wireguard/wg_confs/wg0.conf

### get compose.yml

echo -e "\ncompose.yml\n"
cat compose.yml

### get turnserver.conf

echo -e "\nturnserver.conf\n"
cat turnserver.conf

### get nginx.conf

echo -e "\nnginx.conf\n"
cat nginx.conf

### get coturn logs

echo -e "\ndocker logs coturn\n"
docker logs coturn | head -n 100


### get coturn health

echo -e "\ndocker running health\n"
./docker_ps.sh

