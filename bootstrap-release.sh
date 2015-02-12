#!/bin/sh

set -e

CODENAME="Indian Summer"
CODENAME_SAFE="indiansummer"
VERSION="15.1.0"

cd pyfll/templates
for TEMPLATE in *current*; do
TARGET=`echo ${TEMPLATE} | sed  "s/current/${CODENAME_SAFE}/g "`
echo "Target: ${TARGET}"

sed -e "s/\@CODENAME\@/${CODENAME}/g" \
    -e "s/\@CODENAME_SAFE\@/${CODENAME_SAFE}/g" \
    -e "s/\@VERSION\@/${VERSION}/g" \
      ${TEMPLATE} \
       > ../conf/${TARGET}
done
