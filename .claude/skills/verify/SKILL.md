---
name: verify
description: Verify a change to agent-sandbox before commit. Use before each commit and when a ticket says "verify".
---

# Verify a change

## Level 1 – always (about 5 s)

    ruff check .
    python3 -m pytest

Write the result in the PR body.
