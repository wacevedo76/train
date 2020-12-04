#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-02-12
# Description: Write faster test with the shorthand!
# Usage: ./test-shorthand.sh
################################################################################

# Test if the /tmp/ directory exists using the full command:
test -d /tmp/
test_rc=$?

# Test if the /tmp directory exists using the smiple shorthand:
[ -d /tmp/ ]
simple_rc=$?

# Test if the /tmp/ directory exists using the extended shorthand:
[[ -d /tmp/ ]]
extended_rc=$?

# Print the results
echo "The return codes are: ${test_rc}, ${simple_rc}, ${extended_rc}."
