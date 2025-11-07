# 🧠 Halo Neural Compute - MyBinder Edition

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jenaxcoorp/halo-neural-compute-mybinder/HEAD)

## 🚀 One-Click Launch

**Click the badge above** to launch your FREE 184GB RAM VPS with:
- ✅ Agent Zero (AI Brain)
- ✅ Ollama LLM Server (qwen2.5:7b)
- ✅ sshx Terminal Tunnel
- ✅ Jupyter + Python Environment

## 📋 What You Get

**Resources:**
- Memory: 184GB RAM
- CPU: 8 cores
- Storage: 50GB
- Duration: 12 hours per session
- Cost: $0.00 (completely FREE!)

**Services:**
- Agent Zero UI: `/proxy/50080/`
- Ollama API: `/proxy/11434/`
- sshx Terminal: Check `~/sshx_url.txt`

## 🎯 Quick Start

1. Click the Binder badge above
2. Wait ~5-10 minutes for environment build (first time only)
3. Once Jupyter loads, open Terminal
4. Run: `cat ~/sshx_url.txt` to get your terminal access URL
5. Access Agent Zero: Click the `/proxy/50080/` link

## 🔧 Local Integration

Connect this VPS to your local Halo Neural Compute system:

```bash
# On your local PC
git clone https://github.com/jenaxcoorp/halo-neural-compute-mybinder.git
cd halo-neural-compute-mybinder/local_integration
./setup_hybrid_vps.sh
```

## 📖 Documentation

Complete documentation available in `docs/` folder.

## 🛠️ Technical Stack

- **Base:** Ubuntu 22.04 (MyBinder environment)
- **Python:** 3.10
- **AI:** Agent Zero, Ollama, LangChain
- **Storage:** ChromaDB, SQLite
- **Networking:** sshx, jupyter-server-proxy

## 📝 License

MIT License - Free for personal and commercial use

---

**Created by:** RovoDev with MiniMax-M2 Elite Performance  
**Halo Neural Compute System**
