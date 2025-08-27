#!/bin/bash
set -e

docker pull rayeez/charles-schwab-python-app:latest

docker run -d -p 8000:8000 rayeez/charles-schwab-python-app:latest
