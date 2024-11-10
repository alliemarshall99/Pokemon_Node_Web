#!/bin/bash
# Set up NVM and Node.js environment
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Stop the application by name (consistent with app_start.sh)
/usr/bin/pm2 stop "pokemon_app" || true  # Ignore error if the app is not running
