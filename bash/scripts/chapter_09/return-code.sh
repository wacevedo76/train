#/bin/bash

#######################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 2020-02-12
# Description: Teaches us how to grab a return code.
# Usage: ./return-code.sh
#######################################################################

# Run a command that should always work:
mktemp
mktemp_rc=$?

# run a command that should always fail:
mkdir /home/
mkdir_rc=$?

echo "mktemp returned ${mktemp_rc}, while mkdir returned ${mkdir_rc}!"
