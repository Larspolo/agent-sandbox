#!/bin/bash
# Setup script of the cloud environment of agent-sandbox. The owner pastes it into the environment settings.
SETUP_VERSION=1   # raise it with each change: the SessionStart hook compares it with /etc/agent-sandbox-setup-version
set -u
python3 -m pip install --quiet --root-user-action=ignore numpy pytest ruff || true
echo "$SETUP_VERSION" > /etc/agent-sandbox-setup-version || true
