#!/bin/bash

pattern=$1
directory=$2
if [ -z "$directory" ]; then
	directory='.'
fi

# -n : print line number
# -H :print the file name
find "$directory" -type f | xargs grep -nH "$pattern"

