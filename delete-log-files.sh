#!/bin/bash

SOURCE_DIRECTORY="/tmp/app-logs"

# Check if directory exists
if [ -d $SOURCE_DIRECTORY ]
then
    echo "Source Directory is Valid"
else
    echo "Source Directory doesn't exist"
    exit 1
fi

# Extract log files
FILES=$(find $SOURCE_DIRECTORY -name "*.log" -mtime +14)

# Read output and delete files
while read -r line
do
    echo "Removing file: $line"
done <<< $FILES