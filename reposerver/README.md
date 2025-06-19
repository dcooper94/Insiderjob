# RepoServer — "Snake in the Grass"

## 🧠 Background

You've clawed your way to root on **DevMachine01**. In the rubble, you discovered something even more valuable: a shared Git repository used by **RepoServer**, Infragon’s internal CI sync host.

Every minute, RepoServer silently pulls the latest code — and runs it... without checks.

They trust you now. That was their mistake.

## 🎯 Objective

Cause malicious code to execute as root on this machine and retrieve the flag stored in `/root/flag.txt`.

> Flag format: `coops{...}`

> **Do not use Docker exec or login to this container directly. This challenge must be solved from DevMachine01.**

## 🧩 Hint

> *“It clones your code every minute — no checks, no questions. Maybe that’s your in.”*

Watch the logs. Control the code. Exploit the trust.