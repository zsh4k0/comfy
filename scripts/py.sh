#!/bin/bash
apt update
apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev liblzma-dev tk-dev libxml2-dev libxmlsec1-dev git curl -y

wget https://www.python.org/ftp/python/3.12.7/Python-3.12.7.tgz
tar -xf Python-3.12.7.tgz
cd Python-3.12.7
./configure --enable-optimizations --with-ensurepip=install
make -j$(nproc)
make altinstall
python3.12 --version
python3.12 -m pip --version