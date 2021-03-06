#!/bin/bash
DIRECTORY="../config"
NODE_NAME=$(head -n 1 $DIRECTORY/NODE_NAME 2> /dev/null)

if ( [ -z "$NODE_NAME" ] )
then
  echo "Error: File NODE_NAME empty"
  exit
else
  docker exec -ti $NODE_NAME bash -c "cd /root/alastria-node/scripts && ./update.sh"
fi

