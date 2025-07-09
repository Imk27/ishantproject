#!/bin/bash

echo "Running ValidateService hook..."

# Check if nginx is running
if systemctl is-active --quiet nginx; then
  echo "nginx is running"
  exit 0
else
  echo "nginx is NOT running"
  exit 1
fi

