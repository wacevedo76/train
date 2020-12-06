#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-06-12
# Description: Copy pacman.log to a local directory
# Usage: ./log-copy-improved.sh
################################################################################

# Change the directory to the script location.
cd $(dirname $0)
# Create the directory in which we'll store the file.
if [[ ! -d pacmanLog ]]; then
  mkdir pacmanLog || { echo "Cannot create the directory, stopping script."; exit 1; }

  # Copy the log file to our new directory
  cp /var/log/pacman.log pacmanLog || { echo "Cannot copy pacman.log to the new direcotry"; exit 1; }
