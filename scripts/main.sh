#!/bin/bash

apt update
apt upgrade -y
apt install neofetch -y
apt install htop -y

source /scripts/py.sh
source /scripts/uv.sh


tail -f /dev/null