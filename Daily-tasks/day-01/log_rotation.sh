#!/bin/bash

# This script rotates log files 
# It compresses old logs and keeps the last 7 days of logs
LOG_DIR="/var/log"
# Check if the log directory exists
if [ ! -d "$LOG_DIR" ]; then
  echo "Log directory $LOG_DIR does not exist."
  exit 1
fi
# Find and compress log files older than 7 days but not older than 30 days
find "$LOG_DIR" -name "*.log" -mtime +7 -mtime -30 -exec gzip {} \;
# Find and delete log files older than 30 days
find "$LOG_DIR" -name "*.log.gz" -mtime +30 -exec rm -rf {} \;
# DONE
echo "Log rotation completed successfully."
# END