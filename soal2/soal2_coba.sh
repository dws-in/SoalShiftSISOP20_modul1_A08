#!/bin/bash

name=$(echo $1 | awk 'BEGIN{FS="."}{printf("%s",$1)}')

#enkrypting given filename 
lower=abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz
upper=ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZ
n_name=$(echo "$name" | tr "${lower:0:26}" "${lower:$(date +"%H"):26}" | tr "${upper:0:26}" "${upper:$(date +"%H"):26}")
	
#rename file with encrypted string
mv "$1" "$n_name.txt"
#store key for decrypt file
echo -e "\n$(date +%H)" &>> "$n_name.txt"
echo "New name of $1 is $n_name.txt"
