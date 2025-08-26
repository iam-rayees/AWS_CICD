#!/bin/bash
docker pull rayeez/walmart-python-flask-app:latest

docker run --rm -d -p 5000:5000 rayeez/walmart-python-flask-app:latest