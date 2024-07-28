#!/bin/bash
echo "enter keyword"
read keyword

dirList=$(ls -R)

echo $(echo "$dirList" | grep "$keyword")