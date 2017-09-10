#!/usr/bin/env bash
# guessinggame.sh

function count_files {
	ls -q | wc -l
}
filenum=$(count_files)
guess=-1

while [[ $guess -ne $filenum ]]
do
	echo "Guess the number of files in this directory: "
	read guess 
	isnum=`echo "$guess" | grep -E ^\-?[0-9]*\.?[0-9]+$`
	if [ "$isnum" = '' ]
	then
		echo "Your input must be a number, please try again"
	else

		if [[ $guess -lt $filenum ]];
		then
			echo "Your guess is too low"
		elif [[ $guess -gt $filenum  ]]; 
		then
			echo "Your guess is too high"
		elif [[ $guess -eq $filenum ]]; 
		then
			echo "Congratulations! You gessed right"
		fi
	fi
done
