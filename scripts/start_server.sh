#!/bin/bash

echo "Starting backend..." 

# Redirect output to a log file - use a location writable by ec2-user, or sudo for /var/log
echo "Backend started at $(date)" | sudo tee -a /var/log/backend.log

# Start nginx service with sudo
sudo systemctl start nginx.service
