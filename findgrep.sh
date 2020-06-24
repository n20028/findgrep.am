#!/bin/bash

pattern=$1
directory=$2
name=$3
if [ -z "$directory" ]; then
	directory='.'
fi
if [ -z "$name" ]; then
	name='*'
fi
# -n : print line number
# -H : print the file name
find "$directory" -type f -name "$name" | xargs grep -nH "$pattern"

