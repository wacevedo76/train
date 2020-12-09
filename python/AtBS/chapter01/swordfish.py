#!/usr/bin/python3

################################################################################
# Author: Chapter 02: Flow Control
# Date: 08-12-2020
# Description: Used to practice conditional statements and loops
# Usage: ./swordfish.py
################################################################################

while True:
    print('Who are you?')
    name = input()
    if name != 'Joe':
        continue
    print(f"Hello {name}. What is the password? (It is a fish.)")
    password = input()
    if password == 'swordfish':
        break
print('Access granted')
