#!/bin/bash
set -e

TS_KEY="${tailscale_auth_key_master}"
HOSTNAME="${Hostname}"

echo "Starting Tailscale bootstrap..."

# Install Tailscale
curl -fsSL https://tailscale.com/install.sh | sh

systemctl enable tailscaled
systemctl start tailscaled

if [ -n "$TS_KEY" ]; then
  echo "Authenticating with Tailscale..."
  tailscale up --authkey="$TS_KEY" --hostname="$HOSTNAME" --accept-routes=true
else
  echo "WARNING: No Tailscale auth key provided."
fi

sleep 5
tailscale status