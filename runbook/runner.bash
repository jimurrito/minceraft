#!/bin/bash

docker run -it --rm --name minceraft -p 25565:25565 -v ./.minceraft-data:/server jimurrito/minceraft:$(date "+%Y%m%d")