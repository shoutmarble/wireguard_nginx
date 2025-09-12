#!/usr/bin/bash

# Check if bash is available
if ! command -v bash >/dev/null 2>&1; then
    echo "Error: Bash is not installed or not found"
    exit 1
fi

# Check if awk is available
if ! command -v awk >/dev/null 2>&1; then
    echo "Error: awk is not installed or not found"
    exit 1
fi

# Check if livekit.yaml exists
if [ ! -f "livekit.yaml" ]; then
    echo "Error: livekit.yaml not found in current directory"
    exit 1
fi

# Extract key/value from keys section and write to env.vars.livekit
awk '/^keys:/{p=1;next} p&&/^\s+[^#].*:/{split($0,a,":"); gsub(/^\s+|\s+$/,"",a[1]); gsub(/^\s+|\s+$/,"",a[2]); print "export LIVEKIT_API_KEY=\""a[1]"\"\nexport LIVEKIT_API_SECRET=\""a[2]"\""; p=0}' livekit.yaml > env.vars.livekit

# Append LIVEKIT_URL to env.vars.livekit
echo 'export LIVEKIT_URL=https://livekit.landingdev.xyz' >> env.vars.livekit

# Verify success
if [ -f "env.vars.livekit" ]; then
    echo "Successfully created env.vars.livekit"
    cat env.vars.livekit
else
    echo "Error: Failed to create env.vars.livekit"
    exit 1
fi

echo "SOURCING source env.vars.livekit"
source env.vars.livekit

echo "VERIFYING LIVEKIT ENVIRONMENT VARIABLES"
echo ""

echo "LIVEKIT_API_KEY=$LIVEKIT_API_KEY"
echo "LIVEKIT_API_SECRET=$LIVEKIT_API_SECRET"
echo "LIVEKIT_URL=$LIVEKIT_URL"

