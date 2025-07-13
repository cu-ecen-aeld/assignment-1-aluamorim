#!/bin/bash

filesdir=$1
searchstr=$2



if [ $# -lt 2 ]; then
  echo "Missing input parameters"
  exit 1
fi

if [ -d $filesdir ]; then

 nfiles=`find $filesdir -type f | wc -l`
 nlines=`grep -Ri $searchstr $filesdir | wc -l`

 echo "The number of files are $nfiles and the number of matching lines are $nlines"

else
  echo "'$filesdir' is not a valid directory"
fi


