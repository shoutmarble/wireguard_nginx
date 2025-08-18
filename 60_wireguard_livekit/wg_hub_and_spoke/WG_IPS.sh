# Use $1 as the parameter and set a default file path if $1 is unset or empty
value=${1:-wg_config/wg_confs/wg0.conf}
echo "Value is: $value"

# Check if the file exists before running awk
if [ -f "$value" ]; then
    awk '
    /^# peer_/ {
        peer = substr($2, 6)  # Remove "peer_" prefix
    }
    /AllowedIPs/ {
        ip = substr($3, 1, index($3, "/")-1)  # Extract IP without /32
        lines[ip] = peer "  " $0  # Store line with peer name
    }
    END {
        n = asorti(lines, sorted_ips)  # Sort IPs
        printf "%-10s %s\n", "Peer", "AllowedIPs"  # Print header
        printf "%-10s %s\n", "----", "-----------"  # Print separator
        for (i = 1; i <= n; i++) {
            split(lines[sorted_ips[i]], parts, "  ")  # Split on double space
            printf "%-10s %s\n", parts[1], parts[2]  # Print in columns
        }
    }' "$value"
else
    echo "Error: File $value does not exist"
    exit 1
fi
