#!/bin/bash

################################################################################
# Author: Sebastiaan Tammer
# Version: 1.1.0
# Date: Mon Dec 28 2020 
# Description: Redirect user input to file.
# Usage: .redrect-to-file.sh
################################################################################

# Load our Bash function library
source_dir=$(pwd)
source "${source_dir}/bash-function-library.sh"

# since we're dealing with paths, set current working directory.'
set_cwd

# capture the users' input.
read -p "Type anything you like: " user_input

#save the user's input to a file.
echo ${user_input} >> redirect-to-file.txt


