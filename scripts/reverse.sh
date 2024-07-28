#!/bin/bash

path="file"
while IFS= read line; do
    echo "$line" | rev
done < "$path"

#tac file