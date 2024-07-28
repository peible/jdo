#!/bin/bash

apt-get update

if apt-get -s upgrade | grep -q "upgraded,"; then
    sudo apt-get upgrade -y
    echo "Done"
else
    echo "No updates available"
fi