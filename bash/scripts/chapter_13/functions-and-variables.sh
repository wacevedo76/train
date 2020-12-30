#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: v1.3.0
# Date: Wed Dec 30 2020 
# Description: show different variable scopes.
# Usage: ./functions-and-variables.sh <input>
################################################################################

# Check if the user supplied at lease one argument.
if [[ $# -eq 0 ]]; then
  echo "Missing an argument!"
  echo "Usage: $0 <input>"
  exit 1
fi

# Assign the input to a variable
input_variable=$1
# Create a CONSTANT, which never changers.
CONSTANT_VARIABLE="constant"

# Define the function.
hello_variable() {
  local CONSTANT_VARIABLE="maybe not so constant?"
  echo "This is the input variable: ${input_variable}"
  echo "This is the constant: ${CONSTANT_VARIABLE}"
}

# Call the function
hello_variable
echo "--------------------------------------------------------------------------------"
echo "Function variable outside function: ${CONSTANT_VARIABLE}"
