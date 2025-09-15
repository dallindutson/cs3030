#! /usr/bin/bash

while getopts "u:p:v h" opt; do # u - required, p - required, v - not required (no ':')
    case $opt in
        u) 
            username="$OPTARG"
            echo "Username: $username";;
        p) 
            password="$OPTARG"
            echo "Password: $password";;
        v)
            echo "Verbose mode enabled";;
        h)
            echo "Help: This script needs help";;
        \?)
            echo "option -$OPTARG requires and argument";; #OPTARG not printing anything
        :) 
            echo "Option -$OPTARG requires an argument";;
    esac
done