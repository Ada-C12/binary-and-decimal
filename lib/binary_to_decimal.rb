def binary_to_decimal(binary_array)
  length = binary_array.length - 1
  decimal_value = 0
  
  binary_array.each do |binary_value|
    temp_value = (binary_value * (2 ** length))
    decimal_value += temp_value
    length -= 1
  end
  return decimal_value
end