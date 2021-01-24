#!/usr/bin/python

# """
#   the objective of this exercise is the print the below grid
#   in string format as if it where rotateed to the right by 
#   90 degrees which will appear like a heart
# """

grid = [['.', '.', '.', '.', '.', '.'],
        ['.', '0', '0', '.', '.', '.'],
        ['0', '0', '0', '0', '.', '.'],
        ['0', '0', '0', '0', '0', '.'],
        ['.', '0', '0', '0', '0', '0'],
        ['0', '0', '0', '0', '0', '.'],
        ['0', '0', '0', '0', '.', '.'],
        ['.', '0', '0', '.', '.', '.'],
        ['.', '.', '.', '.', '.', '.']]

def rotateGrid(grid):
    # create a item for each row in grid
    side_grid = [[] for colunm in range(len(grid))]

    # for each item (row) in grid
    for row in grid:
        # take each item
        for column_index, column_content in enumerate(row):
            # and append it to a new array in side grind
            side_grid[column_index].append(column_content)

    return side_grid

heart_grid = rotateGrid(grid)

for row in heart_grid:
    print(' '.join(row))
