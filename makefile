all: README.md

README.md:guessinggame.sh
	touch README.md

	echo "#Guessing Game Project" > README.md
	echo " " >> README.md

	echo "**This make command was run at the date and time below: ** " >> README.md
	date +"%D %T" >> README.md
	echo " " >> README.md

	echo "**The guessinggame file contains the following number of lines:**">> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm README.md