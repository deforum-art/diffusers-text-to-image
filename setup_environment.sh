#!/bin/bash

# Install dependencies
# conda install pytorch torchvision torchaudio pytorch-cuda=11.7 -c pytorch -c nvidia

# Clone repositories
git clone https://github.com/huggingface/diffusers.git
git clone https://github.com/huggingface/transformers.git
git clone https://github.com/huggingface/accelerate.git

# Install xformers
python -m pip install -U xformers

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

# Install requirements from requirements.txt (assuming it's in the current directory)
python -m pip install -r requirements.txt

echo "Setup completed!"
