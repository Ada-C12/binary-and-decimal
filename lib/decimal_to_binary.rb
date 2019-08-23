# Raisah Vesteinsdottir
# 8-22-19
# Binary to Decimal Exercise: Optional method

def decimal_to_binary(decimal_number)
  flipped_binary_array = []
  binary_array = []
  
  while decimal_number > 0
    if decimal_number % 2 == 0
      flipped_binary_array << 0
    else
      flipped_binary_array << 1
    end
    decimal_number /= 2
  end
  
  flipped_binary_array.length.times do |index|
    binary_array << flipped_binary_array[flipped_binary_array.length - 1 - index]
  end
  
  return binary_array
end