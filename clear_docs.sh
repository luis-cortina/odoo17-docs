#!/bin/bash

# Check if a directory path is provided
if [ $# -eq 0 ]; then
    echo "Please provide a directory path."
    exit 1
fi

# Store the provided directory path
dir_path="$1"

# Check if the provided path is a directory
if [ ! -d "$dir_path" ]; then
    echo "The provided path is not a directory."
    exit 1
fi

# Find all PNG files in the directory and its subdirectories and delete them
find "$dir_path" -type f ! -name "*.rst" -delete

echo "All PNG files have been deleted from $dir_path and its subdirectories."
