#!/bin/bash
###############################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-03-12
# Description: Make sure the file given as an argument is empty
# Usage: ./empty-file.sh <file-name>
###############################################################################

# Grab the first argument
file_name=$1

# if the file exists, overwrite it with the always empty file
# /dev/null; otherwise, touch it

if [[ -f ${file_name} ]]; then
 cp /dev/null ${file_name}
else
  touch ${file_name}
fi
