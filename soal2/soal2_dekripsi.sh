#!/bin/bash

read -p "Input file name to decrypt: " name

diff=$(sed -en $name.txt | tail -n 1)
new_n=$(bash caesar_cipher.sh "-d" "$diff" "$name")
echo "New name of $new_n.txt is password.txt"

mv -T -u  /home/dws/Documents/"$new_n.txt" /home/dws/Documents/password.txt
