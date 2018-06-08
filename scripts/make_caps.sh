#!/usr/bin/env sh

mkdir shout

for var in "$@"
do
    filename=`echo $var | sed "s/.*\///"`
    cat $var | awk '{print toupper($0)}' > shout/shout_$filename
done
