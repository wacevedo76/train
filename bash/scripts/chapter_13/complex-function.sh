#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: Wed Dec 30 2020 
# Description: A more complex function that shows why functions exist
# Usage: ./complex-function.sh
################################################################################

# Used to print some current data on the system.
print_system_status() {
  date # Print the current datetime.
  echo "CPU in use: $(top -bn1 | grep Cpu | awk '{print $2}')" 
  echo "Memory in use: $(free -h | grep Mem | awk '{print $4}')"
  echo "Disk space available on /: $(df -k / | grep / | awk '{print $4}')"
  echo # Extra newline for readablility
}

# print the system status a few times.
for ((i=0; i<5; i++)); do
  print_system_status
  sleep 5
  clear;
done

