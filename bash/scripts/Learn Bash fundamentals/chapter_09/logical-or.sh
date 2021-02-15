#!/bin/bash

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-03-12
# Description: Use the logical Or for error handling.
# Usage: ./logical-or.sh
################################################################################

# This command will surely fail because we don't have the premissions needed:
cat /etc/shadow || exit 123
