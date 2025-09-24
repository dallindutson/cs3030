#! /usr/bin/bash


sed 's/the/THE/' dukeofyork.txt



sed 's/the/THE/' dukeofyork.txt > output.txt

sed 's/the/THE' < dukeofyork.txt >> output.txt

sed 's/thousand/1000/' dukeofyork.txt

sed "s/were/weren't/" dukeofyork.txt

sed "s/were/weren\'t/" dukeofyork.txt

sed 's/the/THE/g' dukeofyork.txt

#sed 's/aba/---/g' 

sed 's/the/THE/2' dukeofyork.txt

sed 's;the;THE;g' dukeofyork.txt

sed 's/half/1/2/g' dukeofyork.txt

# /abc/
# metacharacters
# . matches a single character
# /a.c/
# /a.c/ will not match ac but will match acc
# /.c/ will not match axxc

sed 's/he./HEX/g' dukeofyork.txt
# ^ $ --- ^ matches the beginning of a line --- $ matches the beginning of a line
# /^abc matches the abc at beginning of line
# /abc$ matches the abc at the end of line

sed 's/down/FRED/g' dukeofyork.txt

sed 's/down$/FRED/g' dukeofyork.txt
# /a[xyz]c matches axc, ayc, azc
sed 's/the[my]/YOU/g' dukeofyork.txt

sed 's/[Tt]he[my]/YOU/g' dukeofyork.txt
# /a[a-z]c/ abc aac adc axc
# /a[a-zA-Z]c/ abc aac adc axc
sed 's/[A-Z][a-z][a-z]/FROG/g' dukeofyork.txt
# /a[^a-z]c abc will not batch but aBc will match
sed 's/the[^ ]/YOU/g' dukeofyork.txt
# * matches zero or more occurences of the previous item
# /ab*c/ matches abc or abbbbbbbbbbbbc or ac
sed 's/e./zzz/g' dukeofyork.txt
sed 's/t.*/ZOO/g' dukeofyork.txt
sed 's/t[a-z]*/ZOO/g' dukeofyork.txt
# /(ab)*c/ matches abababababc but not abbbbbbbc
# & matches input 1 and duplicates
sed 's/the/(&)/g' dukeofyork.txt
#\n means the nth value
sed 's/\(they\) \(were\)/\2 \1/g' dukeofyork.txt # swaps words

# -n suppresses default print of each line
# -e allows specifying multiple commands
# -f specifies a file of commands

# a appends a line
# i inserts a line
# c changes lines



