#!/bin/bash
#soultion 1
sed '10q;d' file.txt


# solutin 2 

if [ ! -f "file.txt" ]; then
    echo "Error: file.txt does not exist"
    exit 1
fi

line_count=$(wc -l < "file.txt")


if [ "$line_count" -ge 10 ]; then
    head -n 10 file.txt | tail -n 1
else
    echo "Error: file.txt has less than 10 lines"
    exit 1
fi
