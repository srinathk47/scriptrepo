#!/bin/bash

# Check if a file name is provided as an argument
if [ -z "$1" ]; then
    echo "Usage: $0 /c/devoops/devops81s/"
    exit 1
fi

# Assign the first argument to a variable
file_path="$1"

# Check if the file exists
if [ ! -f "$file_path" ]; then
    echo "File not found!"
    exit 1
fi

echo "File exists: $file_path"
