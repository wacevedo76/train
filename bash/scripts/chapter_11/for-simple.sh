#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: 1.0.0
# Date: 2018-10-27
# Description: A simple riddle in a while loop
# Usage: ./while-interactive.sh
################################################################################

# Create a 'list'
words="house dog telephone dog"

# Iterate over the list and proces the values.
for word in ${words}; do
  echo "The word is: ${word}"
done
