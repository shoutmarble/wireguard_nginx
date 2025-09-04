docker rm -vf $(docker ps -aq)
docker rmi -f $(docker images -aq)
yes |docker network prune
yes |docker network rm $(docker network ls -q)
yes |docker volume prune -a -f
# remove build cache
yes |docker buildx prune -f

echo "**********"
echo "IMAGE"
docker image ls
echo "**********"
echo "NETWORK"
docker network ls
echo "**********"
echo "VOLUME"
docker volume ls
echo "CACHES"
docker system df
echo "****"
