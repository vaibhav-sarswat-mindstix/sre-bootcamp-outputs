#!/bin/bash

touch files.txt
find . -type f >> files.txt

for file_path in $(cat files.txt); do
    if [[ -f "$file_path" ]]; then
        #echo "File: $file_path"
        # ls -l "$file_path" 
        ls -l "$file_path" | awk '{print substr($1, 2, 3), $9}' | grep  w >> user_writable_files.txt
    fi
done