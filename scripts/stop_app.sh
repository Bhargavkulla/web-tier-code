# or use VS Code or Notepad++
#!/bin/bash

echo "Stopping web tier application (safe mode)"

# Try stopping nginx only if it's installed and running
if systemctl is-active --quiet nginx; then
  echo "Stopping nginx..."
  sudo systemctl stop nginx
else
  echo "Nginx not running"
fi

# Remove old web tier files (ignore errors if not present)
sudo rm -rf /home/ec2-user/web-tier/* || true

# DO NOT delete /etc/nginx/nginx.conf (used by new deployment)
echo "Cleanup complete. Stop script finished."
