#! /usr/bin/bash

function return_name
{
    your_name=$1
    echo "Hello $your_name from return_name"
    return 5
}

return_name $1