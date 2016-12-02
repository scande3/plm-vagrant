#!/bin/sh

# FITS
SHARED_DIR=$1

if [ -f "$SHARED_DIR/install_scripts/config" ]; then
  . $SHARED_DIR/install_scripts/config
fi


cd $DOWNLOAD_DIR
DOWNLOAD_URL="ftp://nlmpubs.nlm.nih.gov/online/mesh/2017/mesh2017.nt"
curl $DOWNLOAD_URL -o mesh2017.nt
curl -H 'Content-Type: text/turtle' --upload-file $DOWNLOAD_DIR/mesh2017.nt -X POST "http://localhost:8988/blazegraph/sparql?context-uri=ftp://nlmpubs.nlm.nih.gov/online/mesh/2017/mesh2017.nt"