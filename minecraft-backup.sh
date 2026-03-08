#!/bin/bash
# Minecraft Server Backup Script

SERVER_DIR="/opt/minecraft"
BACKUP_DIR="/backup/minecraft"
DATE=$(date +%Y-%m-%d_%H:%M)

echo "Starting backup..."
tar -czf $BACKUP_DIR/world_$DATE.tar.gz $SERVER_DIR/world

# Keep only last 7 backups
cd $BACKUP_DIR
ls -t | tail -n +8 | xargs -r rm

echo "Backup complete: world_$DATE.tar.gz"
