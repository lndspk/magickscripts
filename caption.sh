#! /bin/bash

echo "caption media v1"

read -p 'input file: ' inputpath

read -p 'text: ' customtext
customtext="${customtext:=default text}"

read -p 'font: ' font

read -p 'font color: (default: white) ' fontcolor
fontcolor="${fontcolor:=white}"

read -p 'font size: (default: 40) ' fontsize
fontsize="${fontsize:=40}"

read -p 'undercolor: (default: transparent) ' undercolor
undercolor="${undercolor:=transparent}"

read -p 'gravity: (default: south) ' gravity
gravity="${gravity:=south}"

read -p 'export file: ' exportpath

convert $inputpath -gravity $gravity -undercolor $undercolor -fill $fontcolor -font $font -pointsize $fontsize -annotate +0+20 "$customtext" $exportpath

if test -f "$exportpath"; then
	echo "done: $exportpath"
else
	echo "error"
fi
