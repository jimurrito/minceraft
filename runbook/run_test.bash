#!/bin/bash

docker run -it -p 25565:25565 -v ./.minceraft-data:/server jimurrito/minceraft:test