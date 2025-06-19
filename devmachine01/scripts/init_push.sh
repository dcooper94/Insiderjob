#!/bin/bash
mkdir -p ~/project && cd ~/project
git init
echo "# Dev Notes" > README.md
git add README.md
git commit -m "Initial commit"
git remote add origin /shared/bare_repo
git push origin master
