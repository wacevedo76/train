#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: 2018-10-26
# Description: Example of a whle loop with a counter.
# Usage: ./while-counter.sh
################################################################################

# Define the counter ouside of the loop so we don't reset it for 
# every run in the loop.
counter=0

#this loop runs 10 times.
while [[ ${counter} -lt 10 ]]; do
  counter=$((counter+1)) # Increment the counter by 1.
  Echo "Hello! This is loop number ${counter}."
  sleep 1
done

# After the while-loop finishes, print ta goodb
