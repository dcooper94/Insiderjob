# QABox — "Rubber Stamp Reversal" [JUMP NODE]

## 🧠 Background

QABox isn’t just a passive validator anymore — it’s your **bridge** into deeper layers of the network.

This machine lives on an internal VLAN (`secnet`), isolated from the dev environment. Only trusted systems like `RepoServer` can talk to it.

That trust is now yours to exploit.

## 🎯 Objective

Leverage your access to `RepoServer` to pivot into QABox. If you gain access, retrieve the flag at `/root/flag.txt`.

> Flag format: `coops{...}`

> **Note:** This box is not reachable directly from DevMachine01. You must pivot through RepoServer.

## 🧩 Hint

> *“Only trusted systems can reach QABox — and now you own one. Use that bridge wisely.”*
