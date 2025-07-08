#!/bin/bash
echo "Running BeforeInstall hook..."

# Stop Nginx if running (optional)
if systemctl is-active --quiet nginx; then
  systemctl stop nginx
fi

# Clean old deployment directories (optional)
rm -rf /var/www/react-app
rm -rf /var/www/backend-app

mkdir -p /var/www/react-app
mkdir -p /var/www/backend-app
