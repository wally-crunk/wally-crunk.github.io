#!/bin/bash
 
rsync -aP --remove-source-files ./apollostage/final/* \
  /Users/jj/Documents/projects/wally-crunk.github.io/styles/apollostage/

rsync -aP --remove-source-files ./apollostage_paper/final_paper/* \
  /Users/jj/Documents/projects/wally-crunk.github.io/styles/apollostage_paper/

rsync -aP --remove-source-files ./apollostage_coffee/final_coffee/* \
  /Users/jj/Documents/projects/wally-crunk.github.io/styles/apollostage_coffee/

rsync -aP --remove-source-files ./apollostage_sunset/final_sunset/* \
  /Users/jj/Documents/projects/wally-crunk.github.io/styles/apollostage_sunset/
