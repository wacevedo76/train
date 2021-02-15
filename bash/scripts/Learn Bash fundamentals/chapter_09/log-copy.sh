#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-06-12
# Description: Copy pacman.log to a local directory.
# Usage: ./log-copy.sh
################################################################################

# Create the diretory in which we'll store the file.
if [[ ! -d pacmanlLog ]]; then
  mkdir pacmanlLog || { echo "Cannot create the direcotry, stoping script."; exit 1; }
fi

# Copy the log file to our new directory.
cp /var/log/pacman.log pacmanlLog || { echo "Cannot copy dpkg.log to new directory."; exit 1; }
