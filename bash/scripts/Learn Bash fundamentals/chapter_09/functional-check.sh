#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-02-12
# Description: introduces functional checks.
# Usage: ./functional-check.sh
################################################################################

# Create a directory
mkdir /tmp/temp_dir
mkdir_rc=$?

# Use test to check if the directory was created.
test -d /tmp/temp_dir
test_rc=$?

# Check out the return codes:
echo "mkdir resulted in ${mkdir_rc}, test resulted in ${test_rc}."
