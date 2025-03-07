#!/bin/bash

# Define log directory and rotation settings
LOG_DIR="/home/sprasanth/bank-automation/logs"
ARCHIVE_DIR="$LOG_DIR/archive"
MAX_LOGS=5
RETENTION_DAYS=7

# Ensure archive directory exists
mkdir -p "$ARCHIVE_DIR"

# Move old logs to archive
find "$LOG_DIR" -maxdepth 1 -type f -name "*.log" -exec mv {} "$ARCHIVE_DIR" \;

# Keep only the latest 5 logs in archive
ls -t "$ARCHIVE_DIR"/*.log | tail -n +$((MAX_LOGS+1)) | xargs rm -f

# Delete logs older than 7 days
find "$ARCHIVE_DIR" -type f -name "*.log" -mtime +$RETENTION_DAYS -exec rm -f {} \;

echo "Log rotation completed successfully."
