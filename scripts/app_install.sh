#!/bin/bash
# Navigate to the app directory
cd /home/ec2-user/app

# Set up NVM and Node.js environment
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # Load NVM
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # Load NVM bash_completion

# Install dependencies (if not already installed)
npm install

# Ensure pm2 is installed globally
npm install -g pm2
