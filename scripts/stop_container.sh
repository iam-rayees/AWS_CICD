#!/bin/bash
containerIds=$(docker ps -q)

if [[ -z "$containerIds" ]]; then
   echo "No running containers found."
   exit 0
else
   echo "Stopping containers: $containerIds"
   docker rm -f $containerIds
   # Or, if you want to remove them completely:
fi
