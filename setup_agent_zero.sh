#!/bin/bash
set -euo pipefail
# Install Agent Zero and dependencies locally (outside Binder)
python3 -m venv .venv
source .venv/bin/activate
pip install --upgrade pip
if [ ! -d agent-zero ]; then
  git clone https://github.com/frdel/agent-zero.git
fi
pip install -r agent-zero/requirements.txt
cat > agent-zero/.env <<'EOC'
CHAT_MODEL_NAME=qwen2.5:7b
UTIL_MODEL_NAME=qwen2.5:7b
CODE_EXEC_MODEL_NAME=qwen2.5:7b
EMBEDDINGS_MODEL_NAME=nomic-embed-text
OLLAMA_BASE_URL=http://localhost:11434
AGENT_MAX_MEMORY_SIZE=50000
CONTEXT_WINDOW_SIZE=32768
MAX_CONCURRENT_AGENTS=8
EOC
echo "Agent Zero setup complete. Run: python agent-zero/run_ui.py --host 0.0.0.0 --port 50080"
