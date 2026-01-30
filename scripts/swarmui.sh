#!/bin/bash
cd /scripts/
git clone https://github.com/mcmonkeyprojects/SwarmUI.git swarmui
cd swarmui/
./launch-linux.sh --launch_mode none --host 0.0.0.0 --port 8488
