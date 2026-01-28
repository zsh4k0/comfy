#!/bin/bash

apt update
apt upgrade -y
apt install neofetch -y
apt install htop -y

./py.sh
./uv.sh
./auto.sh

tail -f /dev/null