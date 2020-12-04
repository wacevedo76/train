#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-02-12
# Description: use the if-then-exit construct.
# Usage: ./if-then-exit.sh
################################################################################

FILE=/tmp/random_file.txt

# check if the file exists.
if [[ ! -f ${FILE} ]]; then
  echo "File does not exist, stopping the script!"
  exit 1
fi

# Print the file
cat ${FILE}
