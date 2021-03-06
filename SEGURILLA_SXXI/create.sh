#!/bin/sh

find ./src -name '*.md' | while read file
do
	# name without extension
    name=${file%\.*}
	echo "[*] Creating slides for ${file}:"
	landslide "$file" --destination="$name".html
done
