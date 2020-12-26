#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: Fri Dec 25 2020
# Description: Breaking out of nested loops.
# Usage: ./break-x.sh
################################################################################

while true; do
  echo "This is the outer loop."
  sleep 1
  
  for iteration in {1..3}; do
    echo "Tis is inner loop ${iteration}."
    sleep 1
  done
done
echo "This is the end of the script, thnks for playing!"
