#!/bin/bash

#!/bin/bash

# Check if a file path is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <file_path>"
  exit 1
fi

file_path="$1"

# Check if the file exists
if [ ! -f "$file_path" ]; then
  echo "File not found!"
  exit 1
fi

# Read the file, convert to lowercase, remove non-alphanumeric characters, sort, count occurrences, and display the top 5
cat "$file_path" | \
tr '[:upper:]' '[:lower:]' | \
tr -c '[:alnum:]' '[\n*]' | \
sort | \
uniq -c | \
sort -nr | \
head -n 5
