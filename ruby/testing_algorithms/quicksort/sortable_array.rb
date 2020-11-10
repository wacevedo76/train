class SortableArray
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def partition!(left_pointer, right_pointer)

    # we always choose the right-most element as the pivot
    pivot_position = right_pointer
    pivot = @array[pivot_position]

    # We start the right pointer immediately to the left of the pivot
    right_pointer -= 1

    while true do
      while @array[left_pointer] < pivot do
        left_pointer += 1
      end

      while @array[right_pointer] > pivot do
        right_pointer -= 1
      end

      if left_pointer >= right_pointer
        break
      else
        swap(left_pointer, right_pointer)
      end
    end

    # As a final step, we swap the left pointer with the pivot itself
    swap(left_pointer, pivot_position)

    # we return the left pointer for the sake of the quicksort method
    # which will appear later in this chapter
    return left_pointer
  end

  def swap(pointer_1, pointer_2)
    temp_value = @array[pointer_1]
    @array[pointer_1] = @array[pointer_2]
    @array[pointer_2] = temp_value
  end

  def quicksort!(left_index, right_index)
    # base case: the subarray has 0 or 1 elements
    if right_index - left_index <= 0
      return
    end

    # Partition the arry and grab the position of the pivot
    pivot_position = partition!(left_index, right_index)

    # Recursively call this quicksort method on whatever is to the left of the pivot:
    quicksort!(left_index, pivot_position - 1)

    # Recursively call this quicksort method on whatever is the oto the right of the pivot:
    quicksort!(pivot_position + 1, right_index)
  end
end
