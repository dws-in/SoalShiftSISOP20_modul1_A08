#!/bin/bash

#get filename
name=$(echo $1 | awk 'BEGIN{FS="."}{printf("%s",$1)}')

#get key for decrypt filename
diff=$(sed -en $1 | tail -n 1)
diff=$((26 - $diff))

#decrypt given filename caesar cipher method
lower=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
upper=ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ
n_name=$(echo "$name" | tr "${lower:0:26}" "${lower:${diff}:26}" | tr "${upper:0:26}" "${upper:${diff}:26}")

#rename file
mv "$1" "$n_name.txt"
