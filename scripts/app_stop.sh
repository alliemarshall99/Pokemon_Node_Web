#!/bin/bash
cd /home/ec2-user/Pokemon_Node_App
export NVM_DIR="/home/ec2-user/.nvm" 
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
pm2 stop index.js
pm2 delete index.js
