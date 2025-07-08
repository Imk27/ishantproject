#!/bin/bash
echo "Running AfterInstall hook..."

# Install backend dependencies
cd /var/www/backend-app || exit
npm install

# Copy custom nginx config
cp /etc/nginx/sites-available/react-backend /etc/nginx/sites-enabled/react-backend

# Remove default nginx config if exists
rm -f /etc/nginx/sites-enabled/default
