#!/bin/bash

echo "must be in correct directory"
read -p "continue..."

echo "verbose mode."
read -p "Enter comment: " comment_words

git add --all --verbose
git commit -m "updaterrr ~ $comment_words" --verbose
git push -u origin main --verbose