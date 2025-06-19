#!/bin/bash

echo "[+] Stopping containers..."
docker compose down

echo "[+] Removing persistent Git volume (shared_git)..."
docker volume rm insiderjob_shared_git

echo "[+] Bringing containers back up fresh..."
docker compose up --build -d

echo "[+] Environment reset complete."
