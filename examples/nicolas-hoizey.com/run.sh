#!/bin/sh
path=`pwd`
node ../../responsive-image-sizes.js --contextsfile ./contexts.csv --url "file://${path}/page.html" --selector '.main img[srcset]:first-of-type' --maxviewport 2560 --delay 100 --verbose
