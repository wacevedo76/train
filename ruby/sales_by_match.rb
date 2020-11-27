require 'stringio'

# Complete the sockMerchant function below.
def sockMerchant(n, ar)
  # create a hash for matching socks
  matching_socks = Hash.new(0)

  # for each sock in the pile
  (0...n).each do |i|
    # access the specific sock in the pile and add it to the list of matching socks
    matching_socks[ar[i].to_s + '_sock'] += 1
  end

  # given that for each sock color, there might be an uneven number of socks
  # access the number of socks for each color
  number_of_socks_per_color = matching_socks.values

  # pair the socks and descard the leftovers
  number_of_socks_per_color = number_of_socks_per_color.map { |socks| socks / 2 }

  # return the sum
  number_of_socks_per_color.sum

end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')
# 
# n = gets.to_i
# 
# ar = gets.rstrip.split(' ').map(&:to_i)
# 
# result = sockMerchant n, ar
# 
# fptr.write result
# fptr.write "\n"
# 
# fptr.close()
