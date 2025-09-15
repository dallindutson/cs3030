#! /usr/bin/bash

function Usage
{
    echo "Usage: Help function"
}

if [[ $1 == "--help" ]]; then
    Usage
fi 

echo "\nDone"

exit 0