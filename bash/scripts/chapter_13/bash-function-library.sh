#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: v1.1.0
# Date: Sun Jan  3 2021 
# Description: Bash function library.
# Usage: source ~/bash-function-library.sh
################################################################################
# Check if the number of arguments supplied is exactly correct.
check_arguments() {
  # We need at leaston argument
  if [[ $# -lt 1 ]]; then
    echo "Less than 1 argument received, exiting."
    exit 1
  fi

  # Deal with arguments
  expected_arguments=$1
  shift 1 # Removes the first argument.
  
  if [[ ${expected_arguments} -ne $# ]]; then
    return 1 # Return exit status 1.
  fi
}

# Set the current working directory to the script location.
set_cwd() {
  cd $(dirname $0)
}

# Checks if the argument is an integer.
check_integer() {
  # input validation.
  if [[ $# -ne 1 ]]; then
    echo "Need exactly on argument, exiting"
    exit 1 # No validation done, exit script.
  fi

  # Check if the input is an integer.
  if [[ $1 == ^[[:digit:]]+$ ]]; then
    return 0 # Is an integer.
  else
    return 1 # is not an integer
  fi
}
