#!/bin/bash

# Set the source directory to backup
SOURCE_DIR="$1"

# Set backup destination directory
BACKUP_DIR="./backups"

# Get current date and time
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

# Create backup filename
BACKUP_FILE="backup_${TIMESTAMP}.tar.gz"

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

# Check if source directory is provided
if [ -z "$SOURCE_DIR" ]; then
  echo "Usage: $0 <directory_to_backup>"
  exit 1
fi

# Check if source directory exists
if [ ! -d "$SOURCE_DIR" ]; then
  echo "Error: Directory '$SOURCE_DIR' does not exist."
  exit 1
fi

# Create the backup
tar -czf "${BACKUP_DIR}/${BACKUP_FILE}" "$SOURCE_DIR"

echo "Backup of '$SOURCE_DIR' completed successfully!"
echo "Saved as: ${BACKUP_DIR}/${BACKUP_FILE}"
echo "iiuu"
echo "uiyi"
