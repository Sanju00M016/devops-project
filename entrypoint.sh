#!/bin/sh
# entrypoint.sh

echo "🚀 Starting FastAPI with Uvicorn..."
echo "Arguments: $@"

# Run uvicorn with arguments passed from CMD
exec uvicorn main:app --host 0.0.0.0 --port 8000 "$@"
