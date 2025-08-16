
# docker network create --driver bridge --subnet=172.20.0.0/16 traefik

docker network create \
	--driver=bridge \
	--subnet=172.20.0.0/16 \
	--gateway=172.20.0.1 \
	--ipv6 \
	--subnet=2a02:4780:10:e8ad::/64 \
	--gateway=2a02:4780:10:e8ad::1 \
	traefik
