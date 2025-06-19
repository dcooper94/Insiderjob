#!/bin/bash
echo "[*] Starting cron..."
service cron start

echo "[*] Starting SSH..."
/usr/sbin/sshd

echo "[*] QABox jump node active."
tail -f /dev/null
