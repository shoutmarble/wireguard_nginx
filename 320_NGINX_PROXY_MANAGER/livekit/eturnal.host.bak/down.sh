#!/bin/bash

echo "Stopping all running Docker containers..."
docker stop $(docker ps -q)

if [ $? -eq 0 ]; then
    echo "All running Docker containers have been stopped."
else
    echo "An error occurred while stopping Docker containers."
fi
