#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: 1.0.0
# Date: 2018-10-27
# Description: Combining globbing patterns in a for loop.
# Usage: ./for-globbing.sh
################################################################################

# Create a list of log files.
for file in $(ls /var/log/*.log); do
  echo "File: ${file}"
  grep -i 'error' ${file}
done
