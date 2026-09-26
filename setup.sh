#!/bin/bash

echo "Setting up Hello-World-ML-Iris project..."

# Create virtual environment
python -m venv venv

# Activate venv (adjust path if on Mac/Linux)
source venv/Scripts/activate

# Install dependencies
pip install -r requirements.txt

# Create folder structure (safe even if they already exist)
mkdir -p docs src tests configs notebooks

# Create environment variable template if it doesn't exist
if [ ! -f .env.example ]; then
    echo "# Add your environment variables here" > .env.example
fi

echo "Setup complete!"
echo "Activate your environment with: venv\Scripts\activate (PowerShell) or source venv/Scripts/activate (Git Bash)"