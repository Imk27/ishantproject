#!/bin/bash
echo "Running ApplicationStart hook..."

# Start backend (Node.js) app
cd /var/www/backend-app || exit
nohup npm start > /var/log/backend.log 2>&1 &

# Start nginx
systemctl start nginx
