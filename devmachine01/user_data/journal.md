# Devuser Journal

- Management ignored me again today. The cron job I flagged last month? Still runs as root. Still executing the same janky script.
- RepoServer blindly pulls from the shared Git every minute. I've tested it — they don’t even validate what's being synced.
- QA team re-enabled their auto-runner for `scripts/build.py`. One malicious commit and that box is toast.
- JenkinsBox still runs `ci-task.py` as root. But sure, keep telling me there's "no risk."
- I've got a plan. One slip-up from them and I’ll be inside every machine they own.

--E
