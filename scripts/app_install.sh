#!/bin/bash
# Navigate to the application directory
cd /home/ec2-user/app

# Set up Node.js environment
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Install dependencies
npm install

