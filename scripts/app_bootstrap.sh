#!/usr/bin/env bash
set -e

cd /vagrant/realtime

echo ">>> Installing frontend"

make frontend-npm

echo ">>> Installing backend"

cd backend
if [ ! -d venv ]; then
    virtualenv --python=python3 venv
fi

cd ..
make backend
