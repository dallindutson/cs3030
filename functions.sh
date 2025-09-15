#! /usr/bin/bash

for arg in "$@"; do
    case $arg in
        -u|--username) # case 1 - username
            username="$2"
            shift
            ;;
        -p|--password) # case 2 - password
            password="$2"
            shift
            ;;
        *)
            echo "Unknown option: $arg"
            ;;
    esac
done
