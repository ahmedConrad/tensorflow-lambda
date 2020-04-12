#!/bin/bash

# install packages in the root repository
# this is necessary for scripts/compress.js to work
npm install

# copy tfjs-node folder to /tmp and npm install tfjs-node there
# npm install will download/build binaries for tf to run on lambda
cp -R ./tfjs-node ./tmp/tfjs-node
cd ./tmp/tfjs-node
npm install

# inflate all the files built in /tmp/tfjs-node
# and compress it with brotli
cd ../../
node ./scripts/compress.js