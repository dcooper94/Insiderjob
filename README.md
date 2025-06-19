# InsiderJob CTF — "Infragon Compromised"

## 🎯 Objective

This CTF simulates a rogue developer exploiting internal infrastructure failures across 5 interconnected Linux systems using Docker. Your mission: move laterally, escalate privileges, and capture root flags on every machine.

> Flag format: `coops{...}`

---

## 🖥️ Machines

1. **DevMachine01** — Developer sandbox (initial foothold)
2. **RepoServer** — Internal Git sync server
3. **QABox** — [Coming soon]
4. **JenkinsCI**  — [Coming soon]
5. **AdminBox**  — [Coming soon]

---

## 🚀 Setup Instructions

Clone the project and start all machines:

```bash
git clone 
cd insiderjob
docker compose up --build -d
```
Interacting with the containers 

```bash
docker exec -u devuser -it <machine_name> bash
```
Good luck. You're the insider now.

>![NOTE]
> ## 🔄 Resetting the Environment
>If you're having issues or want to restart from a clean state:

```bash
./reset.sh
```
