#!/bin/sh
############################################
# File: dump-dev-tools.sh
# -----------------------
# Script to dump macos, xcode, nodejs, homwbrew dev environment
#

# Debug on: set -x
set -x

echo "***************************************"
echo "     H o m e b r e w"
echo "***************************************"
brew list --versions

echo "***************************************"
echo "     N o d e J s"
echo "***************************************"
node --version

pod --version

npm list -g --depth=0

/usr/bin/xcodebuild -version

echo "***************************************"
echo "     N o d e J s"
echo "***************************************"
printenv




