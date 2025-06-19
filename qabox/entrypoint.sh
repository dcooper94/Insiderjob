#!/bin/bash

echo "[*] Starting cron..."
service cron start

echo "[*] Starting SSH..."
/usr/sbin/sshd

#nsure the log file exists
touch /logs/qa_validation.log
chmod 666 /logs/qa_validation.log

echo "[*] QABox jump node active."
tail -f /logs/qa_validation.log
