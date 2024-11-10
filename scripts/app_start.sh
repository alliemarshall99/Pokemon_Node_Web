#!/bin/bash
# Navigate to the application directory
cd /home/ec2-user/app

# Set up Node.js environment
export NVM_DIR="/home/ec2-user/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Start the app with pm2
pm2 start /home/ec2-user/app/index.js --name "index" || pm2 restart "index"
