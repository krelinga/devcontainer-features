#!/bin/bash

# This test file will be executed against one of the scenarios devcontainer.json test that
# includes the 'claude-code-helper' feature.
    
set -e

# Optional: Import test library bundled with the devcontainer CLI
source dev-container-features-test-lib

# Feature-specific tests
# The 'check' command comes from the dev-container-features-test-lib.
check "tmux is installed" bash -c "tmux -V"
check "env var is set" bash -c "echo \$CLAUDE_CONFIG_DIR"
check "env var points to correct directory" bash -c "[ \"\$CLAUDE_CONFIG_DIR\" = \"/home/vscode/.claude\" ]"

# Report result
# If any of the checks above exited with a non-zero exit code, the test will fail.
reportResults
