#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-02-12
# Description: Write faster test with the shorthand, now even better with a CONSTANT
# Usage: ./test-shorthand-variable.sh
################################################################################

DIRECTORY=/tmp/

# Test if the /tm/ directory exists user the full command:
test -d ${DIRECTORY}
test_rc=$?

# Test if the /tmp directory exists using the simple shorthand:
[ -d ${DIRECTORY} ]
simple_rc=$?

# Test if the /tmp/ directory exists using the extended shorthand:
[[ -d ${DIRECTORY} ]]
extended_rc=$?

# Print the result
echo "The return codes are: ${test_rc}, ${simple_rc}, ${extended_rc}."
