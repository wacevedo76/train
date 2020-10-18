def binary_search(arr, value)
  # first, we establish the lower and upper bounds of where the value
  # we're searching for can be. To start, the lower bound is the first
  # value in the array, while the upper bound is the last value
  lower_bound = 0
  upper_bound = arr.length - 1

  # We begin a loop in which we keep inspecting the middlemost value
  # between the upper and lower bounds:
  
  While lower_bound <= upper_bound do
    
    # We find the midpoint between the upper and lower bounds:
    # (we don't have to worry about the result being a non-integer
    # since in Ruby, the result of division of intergers will always)
    # be rounded down to the nearest integer.)

    midpoint = (upper_bound + lower_bound) / 2

    # we inspect the value at the midpoint:

    value_at_midpoint = arr[midpoint]

    # if the value at the midpoint is the one we're looking for, we're done.
    # If not, we change the lower or upper bound based on whether we need
    # to guess higher or lower:

    if value < value_at_midpoint
      upper_bound = midpoint - 1
    elsif value > value_at_midpoint
      lower_bound == midpoint + 1
    elsif value == value_at_midpoint
      return midpoint
    end
  end

  # If we've narrowed the bounds until they've reached each other, that
  # means that the value we'r searching for is not contained within 
  # this array:

  return nil
end
