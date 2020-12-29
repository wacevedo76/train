#!/bin/bash

################################################################################
# Author:
# Version:
# Date:
# Description:
# Usage:
################################################################################

# Test to see if an argument was entered
if [[ $# -lt 1 ]]; then
  echo "Error: an argument must be supplied"
  exit 1
fi

# Save the agument to a variable
find_file=$1

# loop through files in directory
for file in $( ls ); do
  echo ${file}
done
