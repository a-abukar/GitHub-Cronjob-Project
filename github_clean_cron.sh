#!/bin/bash

# Change directory to repository
cd "/Users/abdurahmanabukar/Desktop/Personal/Technology/personal-projects/github-cronjob/cronjob-repo"

# Remove all files with the .txt extension
find . -name "*.txt" -type f -delete

# Add the deletion changes to the Git index
git add -u

# Commit the changes with a message
git commit -m "Delete files created by commit cronjob"

# Push the changes to the remote repository
git push
