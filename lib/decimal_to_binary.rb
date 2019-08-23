# Add a decimal_to_binary method which converts a decimal number received as a parameter into an array of binary digits. Then write 3 tests for the method.
def decimal_to_binary(decimal_num)
  
  remainder_array = []
  until decimal_num == 0
    remaining_num = decimal_num % 2
    remainder_array << remaining_num
    decimal_num = decimal_num / 2
  end
  
  # alt. binary_array = remainder_array.reverse
  binary_array = []
  remainder_array.each do |remainder_item|
    binary_array.unshift(remainder_item)
  end
  
  return binary_array
end