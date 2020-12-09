#!/usr/bin/python3

################################################################################
# Author: Chapter 02: Flow Control
# Date: 08-12-2020
# Description: quick number guessing game
# Usage: ./guessTheNumber.py
################################################################################

# This is a guess the number game.
import random
secretNumber = random.randint(1,100)
print('I am thinking of a number between 1 and 100.')

# Ask the player to gues  6 times
for guessesTaken in range(1, 7):
    print('Take a guess')
    guess = int(input())

    if guess < secretNumber:
        print('Your guess is too low.')
    elif guess > secretNumber:
        print('Your guess is too high')
    else:
        break   # this condition is the correct guess!

if guess == secretNumber:
    print(f'Good job! You guess my number in {str(guessesTaken)} guesses!')
else:
    print(f'Nope. The number I was thinking of was {str(secretNumber)}')
