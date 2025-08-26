#!/bin/bash
set -e  # exit on real errors (but we'll handle empty case manually)

containers=$(docker ps -q)   # only running containers

if [ -n "$containers" ]; then
  echo "Stopping containers: $containers"
  docker stop $containers
else
  echo "No running containers found. Nothing to stop."
fi
