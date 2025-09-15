#! /usr/bin/bash

print_name()
{
    you=$1
    echo "Hello $you from print_name"
}

function return_name()
{
    your_name=$1
    echo "Hello $your_name from return_name"
    return 5
}

count_lines()
{

    cat $file | wc -l # reads file, wc=word count
}

name=$1
file=$2
print_name $name
return_name $name
echo "Hello $name from main"

num_lines=$( count_lines $file )
echo "You have $num_lines lines in the file '$file'"

exit 0