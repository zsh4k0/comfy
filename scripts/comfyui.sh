#!/bin/bash

cd /scripts/

git clone https://github.com/Comfy-Org/ComfyUI comfyui

cd comfyui/

python3.12 -m venv venv
source venv/bin/activate
uv pip install torch torchvision torchaudio --index-url https://download.pytorch.org/whl/cu121
python3 -c "import torch; print(f'Torch version: {torch.__version__}'); print(f'CUDA disponible: {torch.cuda.is_available()}'); print(f'Versión CUDA: {torch.version.cuda}')"
uv pip install -r requirements.txt
python3 main.py --listen 0.0.0.0 --port 8388 --normalvram