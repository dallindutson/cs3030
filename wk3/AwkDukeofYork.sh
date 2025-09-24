#! /usr/bin/bash

awk ' {print $2, $1}' names.txt # reverses with a space

#https://icarus.cs.weber.edu/~dweidman/CS3030/AwkSed/

awk '{print $3}' dukeofyork.txt
# Awk anything inside of {} is the action
awk '{print $2", " $1}' names.txt # reverses with a comma

awk '{print}' dukeofyork.txt

awk '{print NF, $0}' dukeofyork.txt # prints number of fields in each line

awk 'NF==6{print NF, $0}' dukeofyork.txt # prints lines that have 6 fields

awk 'NF==6' dukeofyork.txt # prints lines with 6 fields, without numbering

awk '$3 ~ / ^the/{print}' dukeofyork.txt

awk -f swap names.txt # -f means read this file, reads file then does command
# -F indicates the field separator
awk -F ',' '{print $2}' # makes comma the field separator
awk -F '\t' '{print $2}' # makes tab the file separator

awk 'BEGIN{FS=","} {print $2}' tabs.txt

# multiaddress.txt
awk 'BEGIN{RS=""; FS="\n"} {name=$1; address=$2; citystatezip=$3; print name ", " address ", " citystatezip}' multiaddress.txt

# OFS is output field separator
awk 'BEGIN{ FS=", "; OFS="\t"} {print $1, $2, $3}' tabs.txt # changes ", " to tab in output

# create file
touch firstthree.awk

awk -f firstthree.awk dukeofyork.txt

