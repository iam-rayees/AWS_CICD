#!/bin/bash
containerIds=$(docker ps -aq)

if [[ -z "$containerIds" ]]; then
   echo "No containers found."
   exit 0
else
   docker rm -f $containerIds
fi
