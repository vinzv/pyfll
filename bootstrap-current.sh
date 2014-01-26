#!/bin/sh

set -e

CODENAME="December Fix Release"
CODENAME_SAFE="decemberfix"
VERSION="13.2.1"

cd pyfll/templates
for TEMPLATE in *current*; do
sed -e "s/\@CODENAME\@/${CODENAME}/g" \
    -e "s/\@CODENAME_SAFE\@/${CODENAME_SAFE}/g" \
    -e "s/\@VERSION\@/${VERSION}/g" \
      $TEMPLATE \
       > ../${TEMPLATE%\.*} 
done
