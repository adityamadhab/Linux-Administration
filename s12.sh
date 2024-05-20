#!/bin/bash

echo -n "Enter file1: "
read file1

echo -n "Enter file2: "
read file2

if cmp -s -- "$file1" "$file2"; then
    echo "Files have the same contents."
    rm -i -- "$file2"
else 
    echo "Files have different contents."
fi
