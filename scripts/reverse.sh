#!/bin/bash

path="/home/peible/scrpt/text"
while IFS= read line; do
    echo "$line" | rev
done < "$path"