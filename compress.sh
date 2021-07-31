#! /bin/bash

echo "compress gif v1"

read -p 'input file: ' inputpath

read -p 'fuzz (default - 7%): ' fuzz
fuzz="${fuzz:=7%}"

read -p 'export file: ' exportfile

mogrify $inputpath -layers 'optimize' -fuzz $fuzz $exportpath

if test -f "$exportfile"; then
	echo "done: $exportfile"
else
	echo "error"
fi
