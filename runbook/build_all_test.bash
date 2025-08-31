#!/bin/bash

# Build one instance per version in ./versions
VERSIONS=$(cat "./versions")

for v in $VERSIONS; do
    echo "Building image for Minecraft [$v]"
    docker build --build-arg "MC_VERSION=$v" \
        -t "jimurrito/minceraft:$v" \
        -t "jimurrito/minceraft:$v$(date "+%Y%m%d")" .
done