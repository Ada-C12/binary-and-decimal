def decimal_to_binary(decimal_number)
  reverse_array = []
  number = decimal_number
  
  until number == 0    
    remainder = number % 2
    
    if remainder == 0
      reverse_array.push(0)
    else
      reverse_array.push(1)
    end
    
    number /= 2   
  end
  
  binary_array = []
  i = -1
  
  while i >= -reverse_array.length
    binary_array.push(reverse_array[i])
    i -= 1
  end
  
  return binary_array
end
