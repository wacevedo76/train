#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: 1.0.0
# Date: 2018-10-27
# Description: A simple riddle in a while loop
# Usage: ./while-interactive.sh
################################################################################

# This loop runs 10 times.
for((counter=1; counter<=10; counter++)); do
  echo "Hello! this is loop number ${counter}."
  sleep 0.5
done
