
def binary_to_decimal(binary_array)
  exponent = binary_array.length - 1
  decimal_value = 0
  
  binary_array.each_with_index do |value, index|
    decimal_value += value * (2 ** exponent - index)
  end
  return decimal_value
end
