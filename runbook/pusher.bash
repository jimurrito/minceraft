#!/bin/bash

if [[ -z "$(docker buildx ls | grep mince-builder)" ]]; then
    docker buildx create --name mince-builder --driver docker-container --use --bootstrap
fi

# Build one instance per version in ./versions
VERSIONS=$(cat "./versions")

for v in $VERSIONS; do
    echo "Building image for Minecraft [$v]"
    docker buildx build --pull --push \
        --platform linux/amd64,linux/arm64 \
        --build-arg "MC_VERSION=$v" \
        -t "jimurrito/minceraft:$v$(date "+%Y%m%d")" \
        -t "jimurrito/minceraft:$v" .
done

LATEST=${VERSIONS[0]}
echo "Building image for Minecraft [$v] (Latest)"
# latest label is the first version on the list
docker buildx build --pull --push \
    --platform linux/amd64,linux/arm64 \
    --build-arg "MC_VERSION=$LATEST" \
    -t jimurrito/minceraft:latest .
