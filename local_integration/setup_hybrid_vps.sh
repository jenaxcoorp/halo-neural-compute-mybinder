#!/bin/bash
# Register MyBinder VPS with local Halo system

VPS_NAME="${1:-mybinder-1}"
JUPYTER_URL="$2"
API_PORT="${3:-8081}"

if [ -z "$JUPYTER_URL" ]; then
    echo "Usage: $0 <vps-name> <jupyter-url> [api-port]"
    echo "Example: $0 mybinder-1 https://hub.mybinder.org/user/youruser-repo-abc123 8081"
    exit 1
fi

# Save to Halo config
CONFIG_FILE="$HOME/.config/halo-neural-compute/vps_pool.json"
mkdir -p "$(dirname "$CONFIG_FILE")"

# Add VPS to pool
python3 << EOF
import json
import os
from datetime import datetime

config_file = "$CONFIG_FILE"
vps_data = {
    "name": "$VPS_NAME",
    "jupyter_url": "$JUPYTER_URL",
    "api_port": int($API_PORT),
    "agent_zero_url": f"{os.environ.get('JUPYTER_URL', '$JUPYTER_URL')}/proxy/50080/",
    "ollama_url": f"{os.environ.get('JUPYTER_URL', '$JUPYTER_URL')}/proxy/11434/",
    "registered_at": datetime.now().isoformat(),
    "status": "active"
}

# Load existing config
if os.path.exists(config_file):
    with open(config_file, 'r') as f:
        try:
            config = json.load(f)
        except Exception:
            config = {"vps_pool": []}
else:
    config = {"vps_pool": []}

# Add or update VPS
existing = [v for v in config["vps_pool"] if v.get("name") != "$VPS_NAME"]
existing.append(vps_data)
config["vps_pool"] = existing

# Save
with open(config_file, 'w') as f:
    json.dump(config, f, indent=2)

print(f"✅ VPS '{vps_data['name']}' registered!")
print(f"   Agent Zero: {vps_data['agent_zero_url']}")
print(f"   Ollama API: {vps_data['ollama_url']}")
