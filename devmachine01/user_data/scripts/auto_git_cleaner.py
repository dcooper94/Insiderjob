#!/usr/bin/env python3
import os
print("Cleaning git branches...")
os.system("git branch --merged | grep -v '\\*' | xargs -n 1 git branch -d")
