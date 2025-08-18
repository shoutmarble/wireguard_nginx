#!/bin/bash

docker compose up -d

# echo -e "\n\nstarting wireguard and nginx proxy"
# docker compose up -d
# 
# echo -e "\n\nstarting whoami diagnostic webpage"
# docker compose -f whoami/whoami.yml up -d
# 
# echo -e "\n\nstarting coturn"
# docker compose -f livekit/coturn.yml up -d
# 
# echo -e "\n\nstarting redis"
# docker compose -f livekit/redis.yml up -d
# 
# echo -e "\n\nstarting livekit"
# docker compose -f livekit/livekit.yml up
