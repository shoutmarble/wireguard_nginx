#!/bin/bash

echo "#############"
echo -e "\n wg_wireguard \n"
echo "#############"

cat ./wg_wireguard/wg_confs/wg0.conf

echo "#############"
echo -e "\n wg_who\n"
echo "#############"

cat ./wg_who/wg_confs/wg0.conf

echo "#############"
echo -e "\n wg_redis\n"
echo "#############"

cat ./wg_redis/wg_confs/wg0.conf

echo "#############"
echo -e "\n wg_livekit \n"
echo "#############"

cat ./wg_livekit/wg_confs/wg0.conf

echo "#############"
echo -e "\n wg_coturn \n"
echo "#############"

cat ./wg_coturn/wg_confs/wg0.conf

