#!/bin/bash

# Start cron and log
echo "[*] Starting cron..." > /opt/boot.log
service cron start >> /opt/boot.log 2>&1

# Confirm cron is running
ps aux | grep cron >> /opt/boot.log

# Drop to devuser shell
echo "[*] Switching to devuser..." >> /opt/boot.log
exec su - devuser -s /bin/bash
