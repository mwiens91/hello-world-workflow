#!/usr/bin/env sh

for var in "$@"
do
    filename=`echo $var | sed "s/.*\///"`
    cat $var | awk '{print toupper($0)}' > shout_$filename
done
