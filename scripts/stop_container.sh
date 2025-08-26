#!/bin/bash

containers=$(docker ps -aq)

if [ -n "$containers" ]; then
  echo "Stopping containers: $containers"
  docker stop $containers
else
  echo "No containers are running."
fi
