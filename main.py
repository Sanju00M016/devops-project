import os
from fastapi import FastAPI
from flask import jsonify
import uvicorn
from prometheus_client import Counter, generate_latest, CONTENT_TYPE_LATEST
from prometheus_client import start_http_server
from starlette.responses import Response

# Load environment variables dynamically
from dotenv import load_dotenv
load_dotenv()


# Define Prometheus metrics
REQUEST_COUNT = Counter('get_info_requests_total', 'Total number of /get_info requests')

app = FastAPI()
@app.get("/get_info")
def read_app():
    REQUEST_COUNT.inc()
    try: 
        return {
            "APP_VERSION": os.getenv("APP_VERSION"),
            "APP_TITLE": os.getenv("APP_TITLE"),
            "APP_MESSAGE": "WELCOME TO DOCKER AND KUBERNETES"
    }
    except Exception as e:
        return {"error": str(e)}

@app.get("/metrics")
async def metrics():
    return Response(generate_latest(), media_type=CONTENT_TYPE_LATEST)