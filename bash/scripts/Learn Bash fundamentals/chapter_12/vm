#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: Tue Dec 29 2020 
# Description: Display the man page for a given command in a vim buffer
# Usage: ./vm.sh <command>
################################################################################

# Check correct number of arguments
if [[ $# -ne 1 ]];then
  echo "Wrong number of arguments"
  echo "Usage: $0 <command>"
  exit 1
fi

vim <(man ${1})

