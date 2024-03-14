#!/bin/bash

# Downloads a copy of jre
# https://packages.debian.org/sid/openjdk-8-jre-headless
if [[ $DOWNLOAD_NEW ]]; then
wget http://ftp.us.debian.org/debian/pool/main/o/openjdk-8/openjdk-8-jre-headless_8u402-ga-2+b1_arm64.deb
fi

apt install ./openjdk-8-jre-headless_8u402-ga-2+b1_arm64.deb -y

# Clean up
rm -f openjdk-8-jre-headless_8u402-ga-2+b1_arm64.deb

