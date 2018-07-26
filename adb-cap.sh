#!/bin/sh
############################################
# File: adb-cap.sh
# -----------------------
# Script to capture screenshot to file from adb connected Android device and saves to ~/Desktop.
#
# Ed Sutton
# Free for any use.
# Tested on macOS

# Debug on: set -x
#set -x

fileSaveFolder=~/Desktop
fileName=adb-cap-`date +%Y-%m-%d_%H-%M-%S`.png

if [ $# -eq 1 ]; then
    fileName="$1"
fi

if ! [ ${fileName: -4} == ".png" ]; then
   fileName=${fileName}.png
fi

fileNamePath=${fileSaveFolder}/${fileName}

echo "adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ${fileNamePath}"
adb shell screencap -p | perl -pe 's/\x0D\x0A/\x0A/g' > ${fileNamePath}
echo Saved to:
echo ${fileNamePath}
