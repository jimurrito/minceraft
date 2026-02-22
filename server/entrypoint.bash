#!/usr/bin/env bash
#
# make target for server data
# Done this way incase we are putting the server in a mount point
cp -fvr /setup/server /
cd /server
# Build 'server.properties' from docker ENV ARGS
bash /setup/makeSrvrProps.bash
# Start server
bash run.sh
