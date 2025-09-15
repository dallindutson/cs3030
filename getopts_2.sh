#! /usr/bin/bash

while getopts "u:p:v" opt; do # u - required, p - required, v - not required (no ':')
    case $opt in
        u) 
            username="$OPTARG"
            echo "Username: $username";;
        p) 
            password="$OPTARG"
            echo "Password: $password";;
        v)
            echo "Verbose mode enabled";;
        \?)
            echo "option -$OPTARG requires and argument";; #OPTARG not printing anything
        :) 
            echo "Option -$OPTARG requires an argument";;
    esac
done