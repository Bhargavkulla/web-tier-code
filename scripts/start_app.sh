#!/bin/bash

echo "Starting application..."

# Restart nginx to pick up new config
service nginx restart

# Ensure permissions and enable at boot
chmod -R 755 /home/ec2-user
chkconfig nginx on

echo "Application started"
