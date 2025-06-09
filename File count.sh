#!/bin/bash

# Check if a directory path is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <absolute-directory-path>"
  exit 1
fi

DIR="$1"

# Check if the provided path is a directory
if [ ! -d "$DIR" ]; then
  echo "Error: '$DIR' is not a valid directory."
  exit 1
fi

# Count only regular files (not directories or symlinks)
FILE_COUNT=$(find "$DIR" -maxdepth 1 -type f | wc -l)

echo "There are $FILE_COUNT file(s) in the directory '$DIR'."
