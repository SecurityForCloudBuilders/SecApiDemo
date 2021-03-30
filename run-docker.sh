#!/bin/bash
docker build --tag=app-api:latest .
# docker run -d --rm -p 8000:8000 --name app-api app-api:latest
# If you have access to CloudOne Application security
docker run -d --rm -p 8000:8000 --name app-api -e TREND_AP_KEY=<KEY> -e TREND_AP_SECRET=<SECRET> app-api:latest
