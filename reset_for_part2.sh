#!/bin/bash

# A few things so that part 2 runs smoothly

# add remote
git remote add originx git@github.com:pierre-24/test-repo-git.git

# fetch everything
git fetch originx

# reset main so that it matches what is locally there
git push -u originx main -f

# (re-)create a branch with a change wrt main, then delete it from local repository
git branch -d a-remote-branch
git push originx --delete a-remote-branch

git switch -c a-remote-branch
echo "test" > remote_file
git add remote_file
git commit -am "add remote_file"

git switch main

git push originx a-remote-branch
git branch -d a-remote-branch

# delete some other branches that are used in part2
git push originx --delete an-example-branch
git push originx --delete branch-fail-tests

# delete remote
git remote remove originx
