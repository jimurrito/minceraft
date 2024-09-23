#!/bin/bash

if [[ -z "$(docker buildx ls | grep mince-builder)" ]]; then
    docker buildx create --name mince-builder --driver docker-container --use --bootstrap
fi

docker buildx build --pull --push --platform linux/amd64,linux/arm64 -t jimurrito/minceraft:$(date "+%Y%m%d") .. && \
docker buildx build --pull --push --platform linux/amd64,linux/arm64 -t jimurrito/minceraft:latest ..
