#!/bin/bash
list=$(ls -l | tail -n +2)

list_array=(0 0)
while IFS= read -r line; do
    if [[ ${line:0:1} == d ]]; then
        ((list_array[0]++))
    elif [[ ${line:0:1} == '-' ]]; then
        ((list_array[1]++))
    else
        echo "err"
    fi
done <<< "$list"

echo "Directories: ${list_array[0]}"
echo "Files: ${list_array[1]}"