#!/bin/bash

echo "Stopping running containers (if any)..."

# Get IDs of running containers
containers=$(docker ps -q)

if [ -n "$containers" ]; then
  docker stop $containers
else
  echo "No running containers found."
fi

exit 0   # Always succeed for CodeDeploy
