def binary_to_decimal(binary_array)
  first_integer = 0 
  array_length = binary_array.length
  
  binary_array.each_with_index do |integer, index|
    first_integer += (integer * 2**(array_length - 1 - index))
  end
  return first_integer
end






