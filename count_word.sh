#!/bin/bash

# Check if a file path is provided
if [ -z "$1" ]; then
  echo "Usage: $0 </scriptrepo>"
  exit 1
fi

file_path="$1"


# sort the words, sort by count, and display the top 5
cat "$file_path" | \
tr '[:upper:]' '[:lower:]' | \
tr -c '[:alnum:]' '\n' | \
sort | \
uniq -c | \
sort -nr | \
head -n 5
