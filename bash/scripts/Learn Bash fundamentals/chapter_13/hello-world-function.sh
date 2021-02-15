#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: v1.0.0
# Date: Wed Dec 30 2020 
# Description: Prints "hello world!" using a function
# Usage: ./hello-world-function.sh
################################################################################

# Define the function before we call it.
hello_word() {
  echo "Hello world!"
}

#call the function we defined earlier:
hello_word
