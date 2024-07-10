#!/bin/bash

echo "must be in correct directory"
read -p "continue..."

echo "verbose mode."
while true; do
    read -p "Enter comment: " comment_words
    if [[ -n "$comment_words" ]]; then
        break
    else
        echo "Input cannot be blank. Please try again." >&2
    fi
done

git add --all --verbose || { echo "git add failed." >&2; exit 1; }
git commit -m "updaterrr ~ $comment_words" --verbose || { echo "git commit failed." >&2; exit 1; }
git push -u origin main --verbose || { echo "git push failed." >&2; exit 1; }

echo "Complete."