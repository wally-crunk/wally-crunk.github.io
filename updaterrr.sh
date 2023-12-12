#!/bin/bash

echo "must be in correct directory"
read -p "continue..."

read -p "Enter comment: " comment_words

git add --all
git commit -m "updaterrr ~ $comment_words"
git push -u origin main