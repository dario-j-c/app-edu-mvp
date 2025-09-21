#!/bin/bash
set -e # Exit immediately if a command exits with a non-zero status.

echo "--- Running installation script ---"

# 1. Install OS-level dependencies for building python packages
echo "Updating OS packages and installing build dependencies..."
sudo apt-get update
sudo apt-get -y install gfortran libopenblas-dev

# 2. Install uv system-wide
echo "Installing uv..."
sudo pip install --upgrade pip
sudo pip install uv

# 3. Use uv to install project dependencies from requirements files
echo "Installing Python dependencies..."
sudo uv pip install --system -r req_files/requirements.txt -r req_files/requirements.nbook.txt

echo "Installation script complete."
