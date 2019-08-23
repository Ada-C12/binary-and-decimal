# Raisah Vesteinsdottir
# 8-22-19
# Binary to Decimal Exercise

def binary_to_decimal(binary_array)
  raise ArgumentError if binary_array.length != 8
  
  decimal_number = 0
  binary_array.each_with_index do |bit, index|
    decimal_number += bit * (2**(7-index))
  end
  
  return decimal_number
end
