#!/bin/sh

echo "enter the specified file type to search"
#reads the file type to be search 
read file

echo "enter the pattern to search"
#reads the word/pattern to search
read pattern

#finds the file we entered and then search the word in that files
find -name "$file" | xargs grep -i $pattern 
