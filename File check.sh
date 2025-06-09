#!/bin/bash

# Check if argument is provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <filename>"
  exit 1
fi

FILE="$1"

# Check if the file exists
if [ -e "$FILE" ]; then
  echo "File '$FILE' exists."
else
  echo "File '$FILE' does not exist."
fi
