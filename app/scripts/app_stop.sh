#!/bin/bash
cd /home/ec2-user/Pokemon_Node_Web
export NVM_DIR="/home/ec2-user/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Stop and delete the process if it exists, ignore errors if not found
pm2 stop index.js || true
pm2 delete index.js || true
