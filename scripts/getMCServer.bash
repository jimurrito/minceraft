#!/bin/bash

#
# INSTALLS IN THE CURRENT DIR. BEWARE!
#

# Download forge
# Contains MC server jar
if [[ $DOWNLOAD_NEW ]]; then
    wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2860/forge-1.12.2-14.23.5.2860-installer.jar
fi

# generate Eula text
echo "eula=true" > eula.txt
# Timeout so we can generate the world - required as forge will not do so
#timeout 30s java -jar server.jar
# installer does not need this. only forge.jar

# Install forge
java -jar forge-1.12.2-14.23.5.2860-installer.jar --installServer
rm -fr forge-1.12.2-14.23.5.2860-installer.jar*