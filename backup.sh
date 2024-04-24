#!/bin/bash

TIMESTAMP=$(date +%F-%H-%M-%S)
read -p "Enter source directory: " SOURCE_DIRECTORY
read -p "Enter destination directory: " DESTINATION DIRECTORY

if [ -d $SOURCE_DIRECTORY && -d $DESTINATION_DIRECTORY ]
then
    echo "Either of the directories is invalid"
else
    echo "Source and Destination directories are valid"
fi

# Zip a directory
cd $SOURCE_DIRECTORY
tar -czvf archive-${TIMESTAMP}.tar.gz *
mv archive-${TIMESTAMP}.tar.gz $DESTINATION