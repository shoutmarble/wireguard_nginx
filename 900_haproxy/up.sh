
echo -e "\nCreating hap_net network if it doesn't already exist\n"
./network.sh

echo -e "\n HAPROXY STARTING\n"
docker compose up -d --build

