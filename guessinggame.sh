#!/usr/bin/env bash

# Function to get number of files in the current directory
function file_count {
  echo $(ls -1 | wc -l)
}

# Store correct number of files
correct=$(file_count)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"
read guess

while [[ $guess -ne $correct ]]
do
  if [[ $guess -lt $correct ]]
  then
    echo "Too low! Try again:"
  else
    echo "Too high! Try again:"
  fi
  read guess
done

echo "Congratulations! You guessed right!"
echo "There are $correct files in the directory."
