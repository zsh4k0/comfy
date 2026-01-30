#!/bin/bash

apt update
apt upgrade -y
apt install neofetch -y
apt install htop -y

source /scripts/py.sh
source /scripts/uv.sh
source /scripts/auto.sh

source /scripts/dotnet.sh
source /scripts/swarmui.sh

tail -f /dev/null