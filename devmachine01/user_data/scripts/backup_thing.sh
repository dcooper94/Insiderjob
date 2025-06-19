#!/bin/bash
echo "Backing up user configs to /mnt/backup..."
tar -czf /mnt/backup/devuser_home_$(date +%s).tar.gz /home/devuser
