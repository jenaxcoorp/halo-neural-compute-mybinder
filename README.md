# Halo Neural Compute — MyBinder (Root)

[![Launch on MyBinder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/jenaxcoorp/halo-neural-compute-mybinder/vps-minimal-1.0?urlpath=proxy/50080/)

This repository is prepared for MyBinder with a minimal FastAPI service on port 50080 to validate Jupyter proxy routing. Binder launches FastAPI in background and then JupyterLab. Use either:
- Direct proxy: /proxy/50080/ (JSON expected)
- Notebook: lab/tree/notebooks/Example.ipynb (run the checks)

Folder notes
- `binder/` — Binder build recipes (requirements, runtime, postBuild)
- `start` — Executed by Binder at container start; runs FastAPI on port 50080
- `halo-neural-compute-mybinder/` — Extended assets; not required for minimal validation

Status
- Certification: COMPLETE when launched via tag frontdoor and FastAPI responds at /proxy/50080/. For stable builds, always use the tag-based frontdoor shown above.
\n## Stable Launch (Tag Frontdoor)
For deterministic builds and faster cold starts, always use the tag frontdoor:
\n- https://mybinder.org/v2/gh/jenaxcoorp/halo-neural-compute-mybinder/vps-minimal-1.0?urlpath=proxy/50080/
\nStatus
- Certification: COMPLETE when launched via tag frontdoor and FastAPI responds at /proxy/50080/
