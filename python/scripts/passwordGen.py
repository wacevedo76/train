#!/bin/env python3

################################################################################
# Author: William Acevedo
# Version: v1.0.0
# Date: 15/02/2021
# Description: generates random random password of any length
# Usage: genPass(<length of password (number)>
################################################################################
import pyperclip
import random

# Create random character list
alpha = [chr(l) for l in [33, 35, 36, 37, 38, 42, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 94, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122]]

def genPass(passwordLength):
    password = ''.join(random.sample(alpha, passwordLength))
    pyperclip.copy(password)
    return password
