#!/usr/bin/env bash
set -e
if [[ $EUID -eq 0 ]]; then
   echo "This script can not be run as root" 1>&2
   exit 1
fi

echo ">>> Cloning repository."

# Download application.
cd /vagrant
if [ -d "cy-time" ]; then
    cd cy-time
    #git pull
    #git checkout master
    cd /vagrant
else
    git clone git@github.com:CodeYellowBV/cy-time.git

    if [ $? -eq 128 ]; then
        echo "git returned exit code 128. Make sure you have access to GitHub with your keys."
        exit 1
    fi
fi
