#!/usr/bin/python3

################################################################################
# Author: Chapter 03: Functions
# Date: 08-12-2020
# Description: Exception Handling
# Usage: ./zigzag.py
################################################################################

import time, sys
indent = 0
indentIncreasing = True

try:
    while True:
        print(' ' * indent, end='')
        print('********')
        time.sleep(0.1)

        if indentIncreasing:
            # increase the number of spaces:
            indent += 1
            if indent == 20:
                # Change direction:
                indentIncreasing = False
        else:
            # Decrese the number of spaces
            indent -= 1
            if indent == 0:
                # Change direction:
                indentIncreasing = True
except KeyboardInterrupt:
    sys.exit()
