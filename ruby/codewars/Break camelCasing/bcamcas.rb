def break_camel_case(data)
  # set word storge array
  result_array = []
  # set previous index position variable
  previous_index = 0
  # itearte over data by index
  for i in 0..data.length
    # if data index is 0, skip (first word in data string)
    unless i == 0
      # test to see if ch is uppercase or the last letter in string
      if data[i] == data[i].upcase or i == data.length - 1
        # if positive, grab the substring and push into result_array
        result_array << data[previous_index, i]
        # and update the previous index for the next itteration
        previous_index = i
      end
    end
  end
  result_array
end
