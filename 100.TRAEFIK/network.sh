
docker network create \
    --driver=bridge \
    --subnet=10.10.0.0/16 \
    --gateway=10.10.0.1 \
    --ipv6 \
    --subnet=fd12:3456:789a::/64 \
    --gateway=fd12:3456:789a::1 \
net
