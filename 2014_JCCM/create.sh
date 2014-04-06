#!/bin/sh

find ./src -name '*.md' | while read file
do
	# name without extension
    name=${file%\.*}
	echo "[*] Creating slides for ${file}:"
	landslide -rc "$file" --destination="$name".html
done

rm src/theme -fr
mv theme src/