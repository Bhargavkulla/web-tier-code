#!/bin/bash

echo "Stopping application and cleaning up old files"

# Stop nginx
service nginx stop

# Clean old build files
rm -rf /home/ec2-user/web-tier/*
rm -rf /etc/nginx/nginx.conf

echo "Stopped application"
