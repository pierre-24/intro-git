#!/bin/bash

# A few things so that part 3 runs smoothly

rm -Rf test_lecture_git

# make a repo with just the README.md
rm -Rf tmp-repo
mkdir tmp-repo
cd tmp-repo
git init

echo "# Git lecture test repo (from Noah)" > README.md
git add README.md
git commit -am "add README.md"

git remote add origin git@github.com:n-deveaux/test_lecture_git.git
git push -u origin main -f

cd ..

rm  -Rf tmp-repo
