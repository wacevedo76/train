#!/bin/bash

################################################################################
# Author: Sebastiaan Tamer
# Version: v1.0.0
# Date: Tue Dec 29 2020
# Description: Use commad substitution with a variable.
# Usage: ./simple-password-generator.sh
################################################################################

# Write a random string to a variable using command substitution.
random_password=$(tr -dc 'a-zA-Z0-9' < /dev/urandom | head -c 64)

echo "Your random password is ${random_password}"
