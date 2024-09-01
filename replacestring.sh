#!/bin/bash


# Create an empty file
touch file3.txt


# Variables
DIRECTORY="/home/ec2-user/scriptrepo"
SEARCH_STRING="old_string"
REPLACE_STRING="new_string"

# Find and replace in all text files
find "$DIRECTORY" -type f -name "*.txt" | while read -r FILE; do
    sed -i "s/$SEARCH_STRING/$REPLACE_STRING/g" "$FILE"
done

echo "Replacement complete."
