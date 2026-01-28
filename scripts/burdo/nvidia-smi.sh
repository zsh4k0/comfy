#!/bin/bash

GPU_RAW=$(nvidia-smi | sed -nr '/\|[[:space:]]*[0-9]+[[:space:]]+NVIDIA/{s/.*[[:space:]]+(NVIDIA[^|]+)[[:space:]]+(On|Off).*/\1/p; q}')
GPU=$(echo "$GPU_RAW" | sed 's/[[:space:]]*$//')   # quita espacios trailing

echo "GPU detectada: '$GPU'"                        # pon comillas para ver si hay espacios ocultos

if [[ "$GPU" == "NVIDIA RTX A4000" ]]; then
    echo "Es RTX A4000"
elif [[ "$GPU" == "NVIDIA GeForce GTX 1070" ]]; then
    echo "Es GTX 1070"
else
    echo "Es otra tarjeta: '$GPU'"
fi