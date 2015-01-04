#!/bin/sh

set -e

CODENAME="Indian Summer"
CODENAME_SAFE="indiansummer"
VERSION="14.1.0"

cd pyfll/templates
for TEMPLATE in *current*; do
sed -e "s/\@CODENAME\@/${CODENAME}/g" \
    -e "s/\@CODENAME_SAFE\@/${CODENAME_SAFE}/g" \
    -e "s/\@VERSION\@/${VERSION}/g" \
      ${TEMPLATE} \
       > ../conf/${TEMPLATE} 
done
