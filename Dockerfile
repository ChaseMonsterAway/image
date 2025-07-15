# FROM nvidia/cuda:12.4.1-cudnn-devel-ubuntu22.04
# FROM nvidia/cuda:12.6.0-cudnn-devel-ubuntu22.04
# FROM nvidia/cuda:12.4.0-runtime-ubuntu22.04
# FROM nvcr.io/nvidia/tritonserver:25.02-trtllm-python-py3
# FROM nvcr.io/nvidia/pytorch:25.01-py3
# FROM paddlepaddle/paddle:3.0.0rc1-gpu-cuda11.8-cudnn8.6-trt8.5
FROM colmap/colmap

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    wget bzip2 ca-certificates libglib2.0-0 libxext6 libsm6 \
    libxrender1 git openssh-server tmux unzip libgl1 ffmpeg && \
    rm -rf /var/lib/apt/lists/*
