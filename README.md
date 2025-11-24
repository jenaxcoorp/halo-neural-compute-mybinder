# Halo Neural Compute — MyBinder (Root)

[![Launch on MyBinder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jenaxcoorp/halo-neural-compute-mybinder/HEAD?urlpath=proxy/50080/)

This repository is prepared for MyBinder with a minimal FastAPI service on port 50080 to validate Jupyter proxy routing. Binder launches FastAPI in background and then JupyterLab. Use either:
- Direct proxy: /proxy/50080/ (JSON expected)
- Notebook: lab/tree/notebooks/Example.ipynb (run the checks)

Folder notes
- `binder/` — Binder build recipes (requirements, runtime, postBuild)
- `start` — Executed by Binder at container start; runs FastAPI on port 50080
- `halo-neural-compute-mybinder/` — Extended assets; not required for minimal validation

Status
- Certification: PENDING until a successful end-to-end Binder session is verified.
