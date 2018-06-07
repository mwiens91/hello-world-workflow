#!/usr/bin/env sh

cat $1 | awk '{print toupper($0)}' > shout_$1
