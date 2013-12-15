#!/bin/sh

set -e

CODENAME="December"
CODENAME_SAFE="december"
VERSION="13.2.rc1"

cd pyfll/templates
for TEMPLATE in *current*; do
sed -e "s/\@CODENAME\@/${CODENAME}/g" \
    -e "s/\@CODENAME_SAFE\@/${CODENAME_SAFE}/g" \
    -e "s/\@VERSION\@/${VERSION}/g" \
      $TEMPLATE \
       > ../${TEMPLATE%\.*} 
done
