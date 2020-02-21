#!/bin/bash

res=1
while [[ $res == 1 ]]
do
read -p "Type only alphabet: "  name

if [[ ! $name =~ ^[[a-zA-Z]]+$ ]]
then
res=0

new_n=$(bash caesar_cipher.sh "-e" $(date +"%H") "$name")
echo "New name of password.txt is $new_n.txt"

< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-28} &> password.txt 
echo "$(date +\"%H\")" &>> password.txt
cp -T -u  /home/dws/Documents/password.txt /home/dws/Downloads/"$new_n.txt"

else
echo "Wrong input!"
fi

done
