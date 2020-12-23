#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-12-20
# Description: Combining globbing patters in a for loop
# Usage: ./test_globbing.sh <file path>
################################################################################

if [ $# -ge 1 ] && [ -d $1 ]; then
  file_path=$1
  for file in $(ls ${file_path}); do
    echo ${file}
  done
else 
  echo 'Incorrect usage, please add a directory'
fi
