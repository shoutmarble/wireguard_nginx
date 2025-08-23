#!/bin/bash

# Generate API Key (e.g., 16 characters)
API_KEY=$(openssl rand -base64 12 | tr -d '/+=' | head -c 16)
echo "API KEY: $API_KEY"

# Generate API Secret (e.g., 32 characters)
API_SECRET=$(openssl rand -base64 33 | tr -d '/+=' | head -c 44)
echo "API SECRET: $API_SECRET"

echo -e "\n\nkeys:"
echo -e "$API_KEY: $API_SECRET"
