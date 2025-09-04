

# homeserver.yml in a docker named volume "synapse-data"
# docker run -it --rm \
#     -v synapse_data:/data \
#     -e SYNAPSE_SERVER_NAME=matrix.landingdev.xyz \
#     -e SYNAPSE_REPORT_STATS=yes \
#     -e SYNAPSE_HTTP_PORT=8008 \
#     -e SYNAPSE_CONFIG_DIR=/data \
#     -e SYNAPSE_CONFIG_PATH=/data/homeserver.yml \
#     -e SYNAPSE_DATA_DIR=/data \
#     matrixdotorg/synapse:latest generate


# view an example homeserver.yml not in a docker named volume "synapse-data"
docker run -it --rm \
	-v $(pwd)/synapse_data:/data \
	-e SYNAPSE_SERVER_NAME=matrix.landingdev.xyz \
	-e SYNAPSE_REPORT_STATS=yes \
	-e SYNAPSE_HTTP_PORT=8008 \
	-e SYNAPSE_CONFIG_DIR=/data \
	-e SYNAPSE_CONFIG_PATH=/data/homeserver.yml \
	-e SYNAPSE_DATA_DIR=/data \
	matrixdotorg/synapse:latest generate

