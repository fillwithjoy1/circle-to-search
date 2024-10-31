#!/usr/bin/env bash

sudo apt-get update -y && sudo apt upgrade -y
sudo apt install zip

mkdir module

# We need to add META-INF, module.prop, customize.sh and uninstall.sh
ls
cp -r META-INF/ module
cp module.prop module
cp customize.sh module
cp uninstall.sh module
ls

echo "HELLO?"

zip -r module.zip module

exit