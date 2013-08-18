#!/bin/sh

set -e

CODENAME="Firestarter"
CODENAME_SAFE="firestarter"
VERSION="13.1.0"

cd pyfll/templates
for TEMPLATE in *current*; do
sed -e "s/\@CODENAME\@/${CODENAME}/g" \
    -e "s/\@CODENAME_SAFE\@/${CODENAME_SAFE}/g" \
    -e "s/\@VERSION\@/${VERSION}/g" \
      $TEMPLATE \
       > ../${TEMPLATE%\.*} 
done
