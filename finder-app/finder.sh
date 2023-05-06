#!/bin/bash

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]
then
    echo "Must specify <file path> and <search string>"
    exit 1
elif [ -e "filesdir" ]
then
    echo "file directory does not exist"
    exit 1
else
    num_file=$(ls -1 $filesdir | wc -l | awk '{print $1}')
    output=$(grep -r $searchstr $filesdir | wc -l | awk '{print $1}')
    echo "The number of files are $num_file and the number of matching lines are $output"
fi
