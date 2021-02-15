#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-29-11
# Description: Our first script using variables!
# Usage: ./hello-world-improved.sh
################################################################################

# Assign a number to the variable.
hello_int=1

echo $(( ${hello_int} + 1 ))
