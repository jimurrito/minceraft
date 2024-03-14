#!/bin/bash

# Downloads a copy of jre
# https://packages.debian.org/sid/openjdk-8-jre-headless
if [[ $DOWNLOAD_NEW ]]; then
    wget https://builds.openlogic.com/downloadJDK/openlogic-openjdk-jre/8u402-b06/openlogic-openjdk-jre-8u402-b06-linux-x64-deb.deb
fi

apt install ./openlogic-openjdk-jre-8u402-b06-linux-x64-deb.deb -y

# Clean up
rm -f openlogic-openjdk-jre-8u402-b06-linux-x64-deb.deb