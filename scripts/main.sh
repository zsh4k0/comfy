#!/bin/bash

apt update
apt upgrade -y
apt install neofetch -y
apt install htop -y

source uv.sh


tail -f /dev/null