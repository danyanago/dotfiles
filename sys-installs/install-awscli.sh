#!/bin/bash

# Step 1: Check if running as root
if [ "$EUID" -ne 0 ]; then
  echo "❌ This script must be run as root. Try using sudo."
  exit 1
fi

# Step 2: Check if apt is available
if ! command -v apt &> /dev/null; then
  echo "❌ This script requires the apt package manager, which is not available on this system."
  exit 1
fi

# Step 3: Inform the user and ask to proceed
echo "This script will install the AWS Command Line Interface (AWS CLI) using apt."
read -p "Do you want to continue? (y/n): " user_input

if [[ "$user_input" != "y" ]]; then
  echo "❌ Installation canceled by user."
  exit 0
fi

# Step 4: Check if 'aws' command already exists
if command -v aws &> /dev/null; then
  echo "❌ A command named 'aws' already exists on this system."
  echo "This may indicate that AWS CLI is already installed or that the command name is taken."
  exit 1
fi

# Step 5: Install AWS CLI via official AWS installer

# Install required dependencies
echo "📦 Installing dependencies..."
apt update -y && apt install -y curl unzip

# Download the installer
echo "📥 Downloading AWS CLI installer..."
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"

# Unzip the installer
unzip -q /tmp/awscliv2.zip -d /tmp

# Run the installer
/tmp/aws/install --update

# Check if installation succeeded
if ! command -v aws &> /dev/null; then
  echo "❌ AWS CLI installation failed."
  exit 1
fi

# Clean up
rm -rf /tmp/aws /tmp/awscliv2.zip



# Step 6: Notify user of successful install
echo "✅ AWS CLI installation complete."
echo "You can verify it by running: aws --version"
