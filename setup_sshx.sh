#!/bin/bash
set -euo pipefail
# Install sshx locally (outside Binder)
mkdir -p "$HOME/bin"
wget -q https://github.com/ekzhang/sshx/releases/latest/download/sshx-x86_64-unknown-linux-gnu.tar.gz -O /tmp/sshx.tar.gz
mkdir -p /tmp/sshx
 tar -xzf /tmp/sshx.tar.gz -C /tmp/sshx
cp /tmp/sshx/sshx "$HOME/bin/sshx"
chmod +x "$HOME/bin/sshx"
echo "sshx installed at $HOME/bin/sshx"
