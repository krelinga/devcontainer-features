#!/bin/sh
set -e

mkdir -p /home/vscode/.claude
chown vscode:vscode /home/vscode/.claude

echo "claude-code-helper: created .claude directory"
