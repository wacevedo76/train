#!/usr/bin/python3

################################################################################
# Author: Chapter 02: Flow Control
# Date: 08-12-2020
# Description: simple magic 8 ball game
# Usage: ./magic8Ball.py
################################################################################
import random

def getAnswer(answerNumber):
    answers = [
        'It is certain',
        'It is decidedly so',
        'Yes',
        'Reply hazy, try again',
        'Ask again later',
        'Concentrate and ask again',
        'My reply is no',
        'Outlook not so good',
        'Very doubtful'
    ]

    return answers[answerNumber]

r = random.randint(0, 8)
fortune = getAnswer(r)

print(fortune)
