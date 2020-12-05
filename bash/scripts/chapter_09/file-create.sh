#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-05-12
# Description: Create a file with contents with the is script
# Usage: ./file-create.sh <directory_name> <file_name> <file_content>
################################################################################

# We need exactly three arguments, check how many have been passed to the script
if [[ $# -ne 3 ]]; then
  echo "Incorrect usage!"
  echo "Usage: $0 <directory_name> <file_name> <file_content>"
  exit 1
fi
# Arguments are correct, lets continue

# Save the arguemts into a varible
directory_name=$1
file_name=$2
file_content=$3

# Create the absolute page for the file.
absolute_file_path=${directory_name}/${file_name}

# Check if the directory exists; otherwise, try to create it
if [[ ! -d ${directory_name} ]]; then
  mkdir ${directory_name} || { echo "Cannot create directory, exiting script!"; exit 1; }
fi

# try to create the file, if it does not exists.
if [[ ! -f ${absolute_file_path} ]]; then
  touch ${absolute_file_path} || { echo "Cannot create file, exiting script!"; exit 1; }
fi

# file has been created, echo the content to it.
echo ${file_content} > ${absolute_file_path}
