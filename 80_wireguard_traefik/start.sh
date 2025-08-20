#!/bin/bash

echo -e "\n\nstarting wireguard and nginx proxy"
docker compose up -d

echo -e "\n\nstarting whoami diagnostic webpage"
docker compose -f whoami/whoami.yml up -d

echo -e "\n\nstarting coturn"
docker compose -f livekit/coturn.yml up -d

echo -e "\n\nstarting redis"
docker compose -f livekit/redis.yml up -d

###################################
# TIMER
###################################

# Set initial time
seconds=40

# Loop until seconds reach 0
while [ $seconds -gt 0 ]; do
    echo "livekit about to start in $seconds seconds"
    sleep 5
    seconds=$((seconds - 5))
done

# Final message
echo "livekit starting"
###################################
# END TIMER
###################################


echo -e "\n\nstarting livekit"
docker compose -f livekit/livekit.yml up
