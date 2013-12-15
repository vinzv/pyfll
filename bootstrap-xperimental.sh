#!/bin/sh

set -e

CODENAME="Thunderstruck"
CODENAME_SAFE="thunderstruck"
VERSION="13.2.rc1"

cd pyfll/templates
for TEMPLATE in *xperimental*; do
sed -e "s/\@CODENAME\@/${CODENAME}/g" \
    -e "s/\@CODENAME_SAFE\@/${CODENAME_SAFE}/g" \
    -e "s/\@VERSION\@/${VERSION}/g" \
      $TEMPLATE \
       > ../${TEMPLATE%\.*} 
done
