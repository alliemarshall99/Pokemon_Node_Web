#!/bin/bash
# Navigate to the app directory
cd /home/ec2-user/app

# Set up NVM and Node.js environment
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Start the application using pm2 with the full path
/usr/bin/pm2 start index.js --name "pokemon_app"  # Assigns a name for easy reference in pm2
