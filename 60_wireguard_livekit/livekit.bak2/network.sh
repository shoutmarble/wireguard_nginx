#docker network create wireguard_network

docker network create --subnet=10.13.13.0/24 wireguard_network

# docker network create \
#         --driver=bridge \
#         --subnet=10.13.0.0/16 \
#         --gateway=10.13.0.1 \
#         --ipv6 \
#         --subnet=2a02:4780:10:e8ad::/64 \
#         --gateway=2a02:4780:10:e8ad::1 \
#         wireguard_network
