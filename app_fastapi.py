from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def root():
    return {
        "status": "ok",
        "message": "Halo Binder FastAPI is running",
        "hint": "Access via /proxy/50080/ in your Binder session URL"
    }
