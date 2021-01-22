#!/usr/bin/python
# Conway's Game of life

import random, time, copy
WIDTH = 60
HEIGHT = 20

#Create a list of list for the cells:
nextCell = []
for x in range(WIDTH):
    column = [] # Create a ndw column.
    for y in range(HEIGHT):
        if random.randint(0,1) == 0:
            column.append('#') # Add a living cell.
        else:
            column.append(' ') # Add a dead cell.
    nextCell.append(column) # nextCells is a  list of column lists.is

while True: # Main programm loop.
    print('\n\n\n\n\n') # Separate each step with newlines.is
    currentCells = copy.deepcopy(nextCells)

    # Print currentCells on the screen:
