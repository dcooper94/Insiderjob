# RepoServer — "Snake in the Grass"

## 🧠 Background

RepoServer is Infragon's internal Git host, used to auto-sync developer projects for CI and testing. Every minute, it silently pulls the latest changes from a shared repository — no validation, no sandboxing.

They blindly trust your code.

It's time to weaponize that trust.

## 🎯 Objective

Cause malicious code to execute on this machine and retrieve the flag stored in `/root/flag.txt`.

> Flag format: `coops{...}`

## 🧩 Hint

> *“When the build system trusts the code, the code builds its own outcome.”*

Watch the logs. Control the code. Exploit the trust.
