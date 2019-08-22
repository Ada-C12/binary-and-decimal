def binary_to_decimal(binary_array)
  binary_num = 0
  binary_sum = 0
  exponent = 7 #binary_array.length - 1

  binary_array.each do |num|
    binary_num = num * 2**exponent
    binary_sum += binary_num
    exponent -= 1
  end
  
  return binary_sum
end
