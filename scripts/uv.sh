#!/bin/bash

git clone https://github.com/comfyanonymous/ComfyUI comfyui

cd comfyui

curl -LsSf https://astral.sh/uv/install.sh | sh
echo 'export PATH="$HOME/.cargo/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

uv --version