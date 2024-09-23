#!/bin/bash

docker run -it --rm -p 25565:25565 -v ./.minceraft-data:/server jimurrito/minceraft:$(date "+%Y%m%d")