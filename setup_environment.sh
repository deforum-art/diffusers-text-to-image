#!/bin/bash

# Install dependencies
conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia -y

# Clone repositories
git clone https://github.com/huggingface/diffusers.git
git clone https://github.com/huggingface/transformers.git
git clone https://github.com/huggingface/accelerate.git

# Install xformers
python -m pip install -U xformers

# Install requirements from requirements.txt (assuming it's in the current directory)
python -m pip install -r requirements.txt

# Install accelerate, transformers, and diffusers
cd accelerate
python -m pip install -e .
cd ../

cd transformers
python -m pip install -e .
cd ../

cd diffusers
python -m pip install -e .
cd ../

echo "Setup completed!"
