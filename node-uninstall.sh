#!/bin/bash

set -x

# echo Xcode uses node from /usr/local/bin/ directory.
# node --version
# /usr/local/bin/node --version

# sudo rm -rf /usr/local/lib/node /usr/local/lib/node_modules /var/db/receipts/org.nodejs.*
# sudo rm -rf /usr/local/include/node /Users/$USER/.npm
# sudo rm /usr/local/bin/node
# sudo rm /usr/local/share/man/man1/node.1
# sudo rm /usr/local/bin/npm
# sudo rm /usr/local/share/systemtap/tapset/node.stp
# sudo rm /usr/local/lib/dtrace/node.d
# In case you want to reinstall node with HomeBrew:
# brew install node


nodeVersionInPath=$(node --version)
nodeVersionXcode=$(/usr/local/bin/node --version)
if [ "$nodeVersionInPath" != "$nodeVersionXcode" ]; then
  echo "*** Error: node version mismatch may cause Xcode build failures"
  echo "Xcode uses /usr/local/bin/node = ${nodeVersionXcode}"
  echo "node in path $(which node) : ${nodeVersionInPath}"
fi


