#! /bin/bash

echo "compress gif v1"

read -p 'input file: ' inputpath

read -p 'fuzz (default - 7%): ' fuzz
fuzz="${fuzz:=7%}"

mogrify -layers 'optimize' -fuzz $fuzz $inputpath

if test -f "$inputpath"; then
	echo "done: $inputpath"
else
	echo "error"
fi
