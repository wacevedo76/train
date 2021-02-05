#!/bin/env python3

################################################################################
# Author: 
# Version: v1.0.0
# Date: 
# Description: 
# Usage: 
################################################################################
import pyperclip
import random

# Create random character list
uppChars = ''.join([chr(l) for l in range(65,91)])
lowChars = ''.join([chr(l) for l in range(97,123)])
symChars = ''.join([chr(l) for l in range(33,58)])
alpha =  uppChars + lowChars + symChars


def genPass(passwordLength):
    password = ''.join(random.sample(alpha, passwordLength))
    pyperclip.copy(password)
    return password
