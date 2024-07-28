#!/bin/bash
list=$(ls -l | tail -n +2)

files=0
dirs=0
IFS=$'\n'
for line in $list; do
    if [[ ${line:0:1} == d ]]; then
        ((dirs++))
    elif [[ ${line:0:1} == '-' ]]; then
        ((files++))
    fi
done

echo "Directories: ${dirs}"
echo "Files: ${files}"
