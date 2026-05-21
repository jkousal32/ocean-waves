#!/usr/bin/env bash

name="Your Name"
email="your.email@example.com"
user=yourusername
repo=ecwam
repodir=/path/to/repo
# token can be created in GitHub: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens
token_code=yourTokenCode 

# --------------------------------------------------

cd $repodir
mkdir $repo
cd $repo

git init
git remote add origin https://github.com/${user}/${repo}
git remote set-url origin https://${user}:${token_code}@github.com/${user}/${repo}
git fetch origin

# make local copy of all remote branches available, and tracks to equivalent remote branch
remote=origin ; for brname in `git branch -r | grep origin | grep -v master | grep -v HEAD | sed -e 's/^[^\/]*\///'`; do git branch --track $brname  $remote/$brname ; done

# switch to main branch ("git switch" also sets up tracking)
git switch main

# connect to the central repository to ensure that access to tags
git remote add central https://github.com/ecmwf-ifs/ecwam.git
