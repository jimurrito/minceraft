#!/bin/bash

# Build one instance per version in ./versions
VERSIONS=$(cat "./versions")

for v in $VERSIONS; do
    echo "Building image for Minecraft [$v]"
    docker buildx build \
        --build-arg "MC_VERSION=$v" \
        --platform linux/amd64,linux/arm64 \
        -t "jimurrito/minceraft:$v-$(date "+%Y%m%d")" \
        -t "jimurrito/minceraft:$v" 
done