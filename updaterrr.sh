#!/usr/bin/env bash
#
# Date:		2024-08-09
# Name: 	updaterrr.sh
# Purpose: 	push stuff to github
#

########
#
# Housekeeping:
# This section sets up pretty output

#set -e 
_VERBOSE=1  # easily turn off/on logging messages here
#set -x 	# super debug: show all commands

# Colors.sh is a nice tool to generate codes like this
tWARN=$'\033[1m\033[38;5;203m\033[48;5;124m WARN \033[0m'
tINFO=$'\033[1m\033[38;5;10m\033[48;5;28m INFO \033[0m'  # louder
tINPUT=$'\033[0;45m INPUT \033[0m '
tDEBUG=$'\033[38;5;8;48;5;144m DEBUG \033[0m ' # louder
tPAUSE=$'\e[0;1;38;5;54;48;5;219m PAUSE \033[0m'
function PAUSE_FOR_ENTER { read -p "$tPAUSE Press [Enter] to continue:"; }
function LINE_BREAKS { yes '' | head -n3; } 
function LINE_BAR { printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' = && echo "=========="; }
function log { if [[ $_VERBOSE -eq 1 ]]; then echo "$tDEBUG" "$@"; fi; }

#
#
########

echo 'updaterrr.sh'
echo "$tINFO Current working directory: $(pwd)"
echo "$tPAUSE must be in correct directory"
PAUSE_FOR_ENTER

while true; do
    read -p "Enter comment: " comment_words
    if [[ -n "$comment_words" ]]; then
        break
    else
        echo "$tWARN Input cannot be blank. Please try again." >&2
    fi
done

git add --all --verbose || { echo "$tWARN git add failed." >&2; exit 1; }
git commit -m "updaterrr ~ $comment_words" --verbose || { echo "$tWARN git commit failed." >&2; exit 1; }
git push -u origin main --verbose || { echo "$tWARN git push failed." >&2; exit 1; }

echo "$tINFO Complete."
echo "$tINFO Click if you like ➜ https://github.com/wally-crunk/wally-crunk.github.io/actions"
