#!/bin/bash

#get filename and save into variable
name=$(echo $1 | awk 'BEGIN{FS="."}{printf("%s",$1)}')
#check if input contains only alphabetic
if [[ $name =~ [^A-Za-z]+$ ]]
then
	#if input contains characters other than alphabet print invalid
	echo "Invalid"

else
	loop=1
	#looping until program genarate qualified password
	while [ $loop -eq 1 ]
	do
		#"range" give more possibilities to get string that contains alphabetic and numeric character
		range=Aa1Bb2Cc3Dd4Ee5Ff6Gg7Hh8Ii9Jj0KkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz
		pass=$(< /dev/urandom tr -dc "$range" | head -c 28)
		# check if password contains alphabetic and numeric character
		if [[ "$pass" =~ [A-Z] ]] && [[ "$pass" =~ [a-z] ]] && [[ "$pass" =~ [0-9] ]]
		then
			loop=0
		fi
	done
	echo "$pass" &> "$1"
fi
