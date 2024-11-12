#!/bin/bash
cd /home/ec2-user/Pokemon_Node_App
export NVM_DIR="/home/ec2-user/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
npm install -g pm2
npm install 
