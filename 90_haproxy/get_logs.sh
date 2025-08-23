#!/bin/bash


### get compose.yml

echo -e "---------------------------------"
echo -e "compose.yml"
echo -e "---------------------------------"
cat compose.yml

### get livekit.yaml

echo -e "---------------------------------"
echo -e "livekit.yaml"
echo -e "---------------------------------"
cat livekit.yaml


### get nginx.conf

echo -e "\n\n---------------------------------"
echo -e "nginx.conf"
echo -e "---------------------------------\n\n"
cat nginx.conf


### get wg_wireguard wg0.conf

echo -e "\n\n---------------------------------"
echo -e "wg_wireguard/wg_confs/wg0.conf"
echo -e "---------------------------------\n\n"

cat wg_wireguard/wg_confs/wg0.conf

### get docker health

echo -e "\n\n\n---------------------------------"
echo -e "docker ps"
echo -e "---------------------------------\n\n"

./ps.sh


### redis.conf

echo -e "\n\n\n---------------------------------"
echo -e "redis_conf/redis.conf"
echo -e "---------------------------------\n\n"

cat redis_conf/redis.conf

echo -e "\n\n\n---------------------------------"
echo -e "redis_conf/users.acl"
echo -e "---------------------------------\n\n"

cat redis_conf/users.acl


echo -e "\n\n\n---------------------------------"
echo -e "docker logs livekit"
echo -e "---------------------------------\n\n"
docker logs livekit  |& head -c 2500

docker exec -it livekit sh
openssl x509 -in /certs/landingdev.xyz.pem -text -noout
openssl rsa -in /certs/landingdev.xyz.key -check
exit

