#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'countingValleys' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER steps
#  2. STRING path
#

def countingValleys(steps, path)
  # Write your code here
  sea_level = 0
  valleys_walked_through = 0

  # for each step
  (0...steps).each do |step|
    # access the type of step that was done and determine if 
    # the hiker walked down into a path FIRST
    if (sea_level == 0 && path[step] == "D") # Hicker entered a valleys
      valleys_walked_through += 1
      # adjust sea_level
      sea_level -= 1
    else
      # adjust sea_level
      path[step] == "D" ? sea_level -= 1 : sea_level += 1
    end
  end
  # return number valleys walked through
  valleys_walked_through
end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
# 
# steps = gets.strip.to_i
# 
# path = gets.chomp
# 
# result = countingValleys steps, path
# 
# fptr.write result
# fptr.write "\n"
# 
# fptr.close()
