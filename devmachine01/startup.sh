#!/bin/bash

echo "[*] Starting cron..."
service cron start

# Fix Git safe.directory for /shared/bare_repo.git
echo "[*] Configuring Git safe.directory..."
sudo -u devuser git config --global --add safe.directory /shared/bare_repo.git

# Optional: fix permissions if volume was mounted as root
if [ -d /shared/bare_repo.git ]; then
    echo "[*] Fixing permissions on /shared/bare_repo.git..."
    chown -R devuser:devuser /shared/bare_repo.git
fi
# Configure Git user identity for devuser
sudo -u devuser git config --global user.name "DevUser"
sudo -u devuser git config --global user.email "devuser@insiderjob.local"

echo "[*] Dropping to devuser shell..."
exec su - devuser
