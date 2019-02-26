#Getting the number of files in the working directory and saving it as a variable
file_num=$(ls | wc -l)

#Creating a checker variable that will track when to exit the loop
check_num=1

#Defining the function to take guesses and check if they are correct
function makeGuess {
	echo "How many files do you think are in the directory?"
	read guess_num
	if [[ $guess_num -gt $file_num ]]
	then
		echo -e "Sorry, your guess is too high. Try again.\n"
	elif [[ $guess_num -lt $file_num ]]
	then
		echo -e "Sorry, your guess is too low. Try again.\n"
	else
		echo -e "That's correct! Well done!\n"
		check_num=0
	fi
}

#Starting the game
echo -e  "\n\n********** WELCOME TO THE GUESSING GAME!! **********\n"

#Entering a loop to prompt the user for guesses until the get they right answer
while [[ check_num -ne 0 ]]
do
	makeGuess
done

echo -e "\n"
