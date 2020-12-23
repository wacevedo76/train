#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: 1.0.0
# Date: 2018-10-27
# Description: A simple riddle in a while loop
# Usage: ./while-interactive.sh
################################################################################

# this loop runs 10 times.
for counter in {a..j}; do
  echo "Hello! This is loop number ${counter}"
  sleep 0.5
done
