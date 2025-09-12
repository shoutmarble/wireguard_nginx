#!/bin/bash
# Create a temporary file to store systemd service PIDs
tmpfile=$(mktemp)

# Cache running systemd services and their PIDs
systemctl -a --type=service --state=running --no-legend | awk '{print $1}' | while read -r unit; do
  pid=$(systemctl show -p MainPID "$unit" | grep -oP 'MainPID=\K[0-9]+')
  if [ -n "$pid" ] && [ "$pid" != "0" ]; then
    echo "$pid $unit" >> "$tmpfile"
  fi
done

# Process ss output and map to cached services
sudo ss -tulnp | awk 'NR>1 {print $1, $2, $5, $6, $7}' | while read -r netid state local_addr peer_addr process; do
  pid=$(echo "$process" | grep -oP 'pid=\K[0-9]+')
  if [ -n "$pid" ]; then
    service=$(grep "^$pid " "$tmpfile" | awk '{print $2}' || echo "No systemctl service")
    printf "%-8s %-8s %-20s %-20s %-30s %-30s\n" "$netid" "$state" "$local_addr" "$peer_addr" "$process" "$service"
  fi
done

# Clean up
rm "$tmpfile"
