> [!WARNING]  
> 🚧 Work in Progress  
> The CTF is still under development. Machines 4 and 5 are coming soon, along with the final web-based flag submission interface.

# InsiderJob CTF — *"Infragon Compromised"*

## 🎯 Objective

You are **E.**, a disgruntled developer inside **Infragon Systems**. After repeated security concerns were dismissed by upper management, you've decided to turn their negligence against them.

This Capture The Flag (CTF) simulates your journey through 5 interconnected Linux systems. Each container represents a real machine in the network. Your mission: move laterally, escalate privileges, and capture the root flags.

> **Flag format**: `coops{...}`

---

## 🖥️ Machines

| Machine        | Role                          | Status        |
|----------------|-------------------------------|---------------|
| `DevMachine01` | Developer sandbox              | ✅ Complete   |
| `RepoServer`   | Internal Git sync server       | ✅ Complete   |
| `QABox`        | QA runner node (jump box)      | ✅ Complete   |
| `JenkinsCI`    | CI pipeline system             | 🚧 Coming Soon |
| `AdminBox`     | Core infrastructure admin node | 🚧 Coming Soon |

Each machine is exploitable from the previous one — follow the narrative and use clues to move forward.

---

## Setup Instructions

1. **Clone the Repository**

```bash
git clone https://github.com/dcooper94/InsiderJob
cd InsiderJob
```

   Build & Launch the Environment

```bash
docker compose build
docker compose up -d
```
   Interact with Machines

For machines with restricted shell access (like DevMachine01), use:

```bash
docker exec -u devuser -it devmachine01 bash
```
  
🔄 Resetting the Environment

To clean and rebuild everything:

```bash
./reset.sh
```

This script removes Docker volumes and containers and resets persistent state (like Git repos or logs).

## Notes

    No external internet access is required.

    Flags are generated at runtime inside each container and are not stored in the Git repository.

    Tools like ping, ip, netstat, cron, git, ssh, and python3 are installed where relevant.

    A Flask-based logger and web front-end for flag submission is planned for final release.

Good luck.
You've warned them long enough.
Now it's time they listened — the hard way.
