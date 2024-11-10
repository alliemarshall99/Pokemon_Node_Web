#!/bin/bash
# Set up Node.js environment
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Stop the application
pm2 stop "index" || echo "App is not running"
