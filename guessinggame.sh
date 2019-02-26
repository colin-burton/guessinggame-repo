
!/usr/bin/enc bash
File: guessinggame.sh

#Getting the number of files in the working directory and saving it as a variable, creating a checker variable
file_num=$(ls | wc -l)
check_num=1

#Defining the function to take guesses and check if they are correct
function makeGuess {
	echo "How many files do you think are in the directory?\n"
	read guess_num
	if [$guess_num -gt $file_num]
	then
		echo "Sorry, your guess is too high. Try again."
	elif [$guess_num -lt $file_num]
	then
		echo "Sorry, your guess is too low. Try again."
	else
		echo "That's correct! Well done!"
		check_num=0
	fi
}

#Starting the game
echo "\n\n********** WELCOME TO THE GUESSING GAME!! **********\n"

#Entering a loop to prompt the user for guesses until the get the right answer
while [[check_num!=0]]
do
	makeGuess
done

echo "\n\nEnter any key to quit"
read quitVar

