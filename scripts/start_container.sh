#!/bin/bash
set -e

docker pull rayeez/charles-schwab-python-app:latest

docker run -d -p 5000:5000 rayeez/charles-schwab-python-app:latest
