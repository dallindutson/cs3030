#! /usr/bin/bash

while getopts "u:p:" opt; do
    case $opt in
        u) 
            username="$OPTARG"
            echo "Username: $username";;
        p) 
            password="$OPTARG"
            echo "Password: $password";;
        \?)
            echo "option -$OPTARG requires and argument";; #OPTARG not printing anything
    esac
done