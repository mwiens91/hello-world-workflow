#!/usr/bin/env sh

for var in "$@"
do
    cat $var | awk '{print toupper($0)}' > shout_$var
done
