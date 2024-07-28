#!/bin/bash

apt-get update

if apt-get -s upgrade | grep -q "upgraded,"; then
    echo "Updates are available. Installing updates..."
    sudo apt-get upgrade -y
    echo "System updated successfully."
else
    echo "No updates available."
fi
