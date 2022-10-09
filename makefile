x := $(shell date)

readme.txt: guessinggame.sh
	echo "Guessing Game" > readme.txt
	echo "Date and Time at which make was run: "  ${x} >> readme.txt
	echo "Number of guessinggame.sh lines:" >> readme.txt
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.txt
