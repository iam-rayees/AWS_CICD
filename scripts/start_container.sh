#!/bin/bash
set -e
docker pull rayeez/walmart-python-flask-app:latest

docker run -d -p 5000:5000 rayeez/walmart-python-flask-app:latest
