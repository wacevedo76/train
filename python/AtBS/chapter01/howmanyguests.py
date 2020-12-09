#!/usr/bin/python3

################################################################################
# Author: Chapter 02: Flow Control
# Date: 08-12-2020
# Description: Used to practice conditional statements and loops
# Usage: ./howmanyguests.py
################################################################################

name = ''

while not name:
    print('Enter your name:')
    name = input()
print('how many guests will you have?')
numOfGuests = int(input())
if numOfGuests:
    print('Be sure to have enough romm for all your guests.')
print('Done')
