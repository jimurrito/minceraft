#!/bin/bash

ARCH=$(uname -m)
BIN_DIR="../installers/jdk-jre"

dpkg -i "$BIN_DIR/jdk-21_linux-$ARCH.deb"
