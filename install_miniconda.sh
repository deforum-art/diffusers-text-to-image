#!/bin/bash

# Download Miniconda3 installer script
echo "Downloading Miniconda3 installer script..."
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Make the installer script executable
chmod +x Miniconda3-latest-Linux-x86_64.sh

# Run the installer script
echo "Installing Miniconda3..."
bash Miniconda3-latest-Linux-x86_64.sh

# Clean up the installer script
rm Miniconda3-latest-Linux-x86_64.sh

# Source .bashrc
source ~/.bashrc

echo "Miniconda3 installation completed!"
