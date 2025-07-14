#!/bin/bash

# Check if the repository URL is provided
REPO_URL="https://github.com/MrSiebel585/tempestuous-detour.git"
PROJECT_NAME="tempestuous-detour"

# Clone the repository
echo "Cloning the repository from $REPO_URL..."
git clone $REPO_URL

# Navigate into the project directory
cd $PROJECT_NAME || exit

# Create a Python virtual environment
echo "Creating a Python virtual environment..."
python3 -m venv venv

# Activate the virtual environment
echo "Activating the virtual environment..."
source venv/bin/activate

# Install Python dependencies
echo "Installing Python dependencies..."
pip install -r requirements.txt || echo "No requirements.txt found, installing basic dependencies..."
pip install requests beautifulsoup4 cryptography pillow opencv-python dlib torch

# Make shell scripts executable
echo "Making shell scripts executable..."
chmod +x vitour_deepfake_ops.sh vitour_fb_disruptor.sh vitour_fb_group_infiltrate.sh vitour_payload_blaster.sh vitour_smear_campaign.sh

# Install other essential tools (e.g., ffmpeg, if needed for deepfake generation)
echo "Installing essential tools (e.g., ffmpeg)..."
sudo apt-get update
sudo apt-get install -y ffmpeg

# Setup complete
echo "Installation complete!"
echo "You can now start using the project. Run './vitour_deepfake_ops.sh' to begin or see individual scripts in the 'scripts' directory."

# Deactivate the virtual environment
deactivate
