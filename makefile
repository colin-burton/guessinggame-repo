README.md:
	echo "# The Guessing Game" > README.md
	echo "\n" >> README.md
	echo "Thanks for checking out my guessing game." >> README.md
	echo "In it, you will try to guess the number of files in the directory.">> README.md
	echo "**guessinggame.sh** contains" >> README.md
	cat guessinggame.sh | wc -l >> README.md 
	echo "lines of code." >> README.md
	echo "The make file that made this README file was run on" >> README.md
	date +'%m/%d/%Y' >> README.md
	echo "at" >> README.md
	date +'%r' >> README.md
