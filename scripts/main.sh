#!/bin/bash

apt update
apt upgrade -y
apt install neofetch -y
apt install htop -y

source py.sh
source uv.sh


tail -f /dev/null