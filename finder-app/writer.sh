#!/bin/bash

filename=$1
writestr=$2



if [ $# -lt 2 ]; then
  echo "Missing input parameters"
  exit 1
fi

dir=`dirname $filename`
mkdir -p $dir

echo "$writestr" > $filename





