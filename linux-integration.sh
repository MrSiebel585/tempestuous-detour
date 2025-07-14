#!/bin/bash

# Define the repository URL and project name
REPO_URL="https://github.com/MrSiebel585/tempestuous-detour.git"
PROJECT_NAME="tempestuous-detour"

# Define the path where the project will be installed
INSTALL_DIR="$HOME/$PROJECT_NAME"

# Check if the project directory already exists
if [ -d "$INSTALL_DIR" ]; then
  echo "The repository already exists in $INSTALL_DIR. Pulling latest changes..."
  cd "$INSTALL_DIR" || exit
  git pull origin main
else
  # Clone the repository if not already present
  echo "Cloning the repository from $REPO_URL into $INSTALL_DIR..."
  git clone "$REPO_URL" "$INSTALL_DIR"
  cd "$INSTALL_DIR" || exit
fi

# Create a Python virtual environment in the project directory
echo "Creating a Python virtual environment in $INSTALL_DIR/venv..."
python3 -m venv venv

# Activate the virtual environment
echo "Activating the Python virtual environment..."
source venv/bin/activate

# Install the required Python dependencies
echo "Installing required Python dependencies..."
pip install -r requirements.txt || echo "No requirements.txt found, installing basic dependencies..."
pip install requests beautifulsoup4 cryptography pillow opencv-python dlib torch

# Make sure the shell scripts are executable
echo "Making shell scripts executable..."
chmod +x vitour_deepfake_ops.sh vitour_fb_disruptor.sh vitour_fb_group_infiltrate.sh vitour_payload_blaster.sh vitour_smear_campaign.sh

# Install additional necessary tools like ffmpeg (needed for deepfake and media processing)
echo "Installing necessary tools (e.g., ffmpeg, build essentials)..."
sudo apt-get update
sudo apt-get install -y ffmpeg build-essential

# Install any missing dependencies for deepfake generation (e.g., OpenCV, dlib)
echo "Installing OpenCV and dlib (if not installed)..."
pip install opencv-python dlib

# Create symbolic links for easy access to scripts
echo "Creating symbolic links for easy script execution..."
ln -s "$INSTALL_DIR/vitour_deepfake_ops.sh" /usr/local/bin/vitour_deepfake_ops
ln -s "$INSTALL_DIR/vitour_fb_disruptor.sh" /usr/local/bin/vitour_fb_disruptor
ln -s "$INSTALL_DIR/vitour_fb_group_infiltrate.sh" /usr/local/bin/vitour_fb_group_infiltrate
ln -s "$INSTALL_DIR/vitour_payload_blaster.sh" /usr/local/bin/vitour_payload_blaster
ln -s "$INSTALL_DIR/vitour_smear_campaign.sh" /usr/local/bin/vitour_smear_campaign

# Print instructions for usage
echo "Installation complete!"
echo "You can now use the tools from anywhere on your system."
echo "Examples of script usage:"
echo "  vitour_deepfake_ops <source_media> <target_face>"
echo "  vitour_fb_disruptor <group_id>"
echo "  vitour_fb_group_infiltrate <group_id>"
echo "  vitour_payload_blaster <target_profiles> <payload>"
echo "  vitour_smear_campaign <target_profile> <smear_content>"

# Deactivate the virtual environment
deactivate

# Finish
echo "All set! To start using the project, navigate to the $INSTALL_DIR directory or call scripts globally."
