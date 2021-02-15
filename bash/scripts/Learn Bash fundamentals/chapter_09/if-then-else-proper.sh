#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-03-12
# Description: Use the if-then-else construct, now properly.
# Usage: ./if-then-else-proper.sh file-name
################################################################################

file_name=$1

# check if the file exists
if [[ -f ${file_name} ]]; then
  cat ${file_name} | less # Print the file content
else
  echo "File does not exist, stopping the script!"
  exit 1
fi
