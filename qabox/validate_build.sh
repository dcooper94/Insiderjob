#!/bin/bash

REPO_PATH="/srv/repo"

if [ ! -d "$REPO_PATH/.git" ]; then
    echo "[!] Repo not found. Cloning..."
    git clone /shared/bare_repo.git "$REPO_PATH"
fi

echo "[*] Pulling latest changes..."
cd "$REPO_PATH"
git pull

echo "[*] Running validation..."
python3 scripts/build.py || echo "[!] Validation failed or script error."
