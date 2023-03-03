#!/bin/bash

# Change directory to repository
cd "/Users/abdurahmanabukar/Desktop/Personal/Technology/personal-projects/github-cronjob/cronjob-repo"

# Set the name of the remote Git repository (this assumes you have already set up a remote called "origin")
REMOTE_NAME=origin

# Generate a random number of commits to make (between 3 and 10)
NUM_COMMITS=$((RANDOM%8+3))

# Loop through and create the specified number of commits
for ((i=0; i<$NUM_COMMITS; i++))
do
  # Create a new file with a random name
  touch $(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1).txt

  # Add the file to the Git index
  git add .

  # Commit the changes with a random message
  git commit -m "Commit message $(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 10 | head -n 1)"

done

# Push the changes to the remote repository
git push $REMOTE_NAME main
