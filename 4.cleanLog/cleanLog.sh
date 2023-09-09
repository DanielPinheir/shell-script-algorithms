#!/bin/bash

pathFolder="/var/log"

find "$pathFolder" -name "*.log" -type f -mtime +7 -exec rm {} \;

echo ".log files with more than 7 days of activity were successfully removed."