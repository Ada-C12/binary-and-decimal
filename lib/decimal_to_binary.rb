def decimal_to_binary(decimal_number)
  
  reverse_binary_array = []
  binary_array = []
  
  until decimal_number == 0
    reverse_binary_array << (decimal_number % 2)
    decimal_number /= 2
  end
  
  reverse_binary_array.each_with_index do |item, index|
    binary_array << reverse_binary_array[reverse_binary_array.length - (index + 1)]
  end
  
  return binary_array
  
end