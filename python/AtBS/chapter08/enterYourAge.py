#!/usr/bin/python3

################################################################################
# Author: Automate the boring stuff - chapter 8 - Input validation
# Version: v1.0.0
# Date: 11-12-2020
# Description: demonstrating input validation through repetition
# Usage: ./enterYourAge.py
################################################################################

while True:
    print('Enter your again:')
    age = input()
    try:
        age = int(age)
    except:
        print('Pleae use numeric digits.')
        continue
    if age < 1:
        print('Plese enter a positive numger.')
        continue
    break
print(f'Your age is {age}.')
