#!/usr/bin/env bash

year=$(date +"%Y");
poem=$(ls -1 db/*.md | wc -l);

git add .;
git commit -m "New research item $year/$poem";
npm version patch; # this does add and commit too.
git push;
