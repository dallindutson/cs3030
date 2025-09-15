#! /usr/bin/bash

function count_lines
{
    file=$1
    cat $file | wc -l # reads file, wc=word count
}

num_lines=$( count_lines $1 )
echo "You have $num_lines lines in the file"