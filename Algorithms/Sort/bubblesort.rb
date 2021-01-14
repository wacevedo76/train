def bubble_sort(list)
  unsorted_until_index = list.length - 1
  sorted = false
  
  while !sorted
    sorted = true
    for i in 0...unsorted_until_index do
      if list[i] > list[i + 1]
        sorted = false
        list[i], list[i+1] = list[i+1], list[i]
      end
    end
    unsorted_until_index = unsorted_until_index - 1
  end
  list
end

p bubble_sort([65, 55, 45, 35, 25, 15, 10])
