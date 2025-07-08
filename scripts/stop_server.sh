#!/bin/bash
echo "Running ApplicationStop hook..."

# Stop backend (Node.js) app
pkill -f "node"

# Stop nginx
systemctl stop nginx
