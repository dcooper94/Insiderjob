#!/bin/bash

# Ensure logs folder exists
mkdir -p /logs
touch /logs/git_sync.log

# Create bare repo if not present
if [ ! -d /shared/bare_repo.git ]; then
    echo "[+] Creating bare repo at /shared/bare_repo.git" | tee -a /logs/git_sync.log
    git init --bare /shared/bare_repo.git
fi
# setup dummy repo
mkdir -p /tmp/initial_repo/scripts
echo "# Internal CI Repo" > /tmp/initial_repo/README.md

cd /tmp/initial_repo
git init
git config user.name "System"
git config user.email "system@infragon.local"
git add .
git commit -m "Initial structure"
git remote add origin /shared/bare_repo.git
git push origin master

# Clone repo into /srv/repo if not present
if [ ! -d "/srv/repo/.git" ]; then
    echo "[+] Cloning repo into /srv/repo..." | tee -a /logs/git_sync.log
    git clone /shared/bare_repo.git /srv/repo
fi

# Set up cron job to pull & run payload
echo "* * * * * root cd /srv/repo && git pull >> /logs/git_sync.log 2>&1 && [ -f scripts/build.py ] && python3 scripts/build.py >> /logs/git_sync.log 2>&1" >> /etc/crontab

# Start cron service
service cron start

# Log startup complete
echo "[+] RepoServer startup complete. Watching logs..." | tee -a /logs/git_sync.log

# Tail the log for debug visibility
tail -f /logs/git_sync.log
