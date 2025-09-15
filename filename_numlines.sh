#! /usr/bin/bash

while getopts "n:f:" opts; do
    case $opt in
        n)
            num_lines=$OPTARG;;
        f)
            file_name=$OPTARG;;
        \?)
            echo "Invalid option: -$OPTARG" >&2 # feed into air
            exit 1;;
        *)
            echo "Option: -$OPTARG requires an argument" >&2
            exit 1;;
    esac
done

shift $(( OPTIND -1 )) # OPTIND - Option independently
if [[ $# -eq 0 ]]; then
    echo "Usage: $0 [-n num_lines] [-f file1]" >&2 # send to error processor
    exit 1
fi