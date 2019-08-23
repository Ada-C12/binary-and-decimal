def decimal_to_binary(decimal_number)
  reverse_binary_array = []
  number = decimal_number
  
  until number == 0    
    remainder = number % 2
    
    if remainder == 0
      reverse_binary_array.push(0)
    else
      reverse_binary_array.push(1)
    end
    
    number /= 2   
  end
  
  return reverse_binary_array.reverse
  
end
