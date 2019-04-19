#!/bin/bash

# Create and push to a new github repo from the command line.  
# Grabs sensible defaults from the containing folder and `.gitconfig`.  
# Refinements welcome.

# Gather constant vars
CURRENTDIR=${PWD##*/}

#GITHUBUSER=$(git config github.user)
GITHUBUSER=jdarosaj


# Get user input
echo "Setting repo name as the same as folder name..."
read -p "Repo Description:" DESCRIPTION

echo "Here we go..."

# Curl some json to the github API oh damn we so fancy
curl -u ${GITHUBUSER} https://api.github.com/user/repos -d "{\"name\": \"${CURRENTDIR}\", \"description\": \"${DESCRIPTION}\", \"private\": true, \"has_issues\": true, \"has_downloads\": true, \"has_wiki\": false}"

# Set the freshly created repo to the origin and push
# You'll need to have added your public key to your github account
git init

echo "${CURRENTDIR}" > README.md
git add .
git commit -m "Adding README"

git remote add origin git@github.com:${GITHUBUSER}/${CURRENTDIR}.git
git push --set-upstream origin master


