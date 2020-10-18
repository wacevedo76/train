def arr_orderer(arr, num)
  result = ''
  if arr.empty?
    'The array is empty'
  elsif arr.include?(num)
    "#{num} exists in the array"
  else
    for i in 0..arr.length do
      if num < arr[i]
        arr.insert(i,num)
        break
      else
        arr.append(num)
        break
      end
    end
  end
end
