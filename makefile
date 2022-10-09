x := $(shell date)

readme.md: guessinggame.sh
	echo "# Guessing Game" > readme.md
	echo "Date and Time at which make was run: "  ${x} >> readme.md
	echo "### Number of guessinggame.sh lines:" >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
