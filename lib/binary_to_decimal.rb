# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  index_position = binary_array.length - 1
  decimal_total = 0
  
  binary_array.length.times do |i|
    decimal_total += binary_array[index_position] * (2**i)
    
    index_position -= 1
  end
  
  return decimal_total
  
end

def decimal_to_binary(decimal_number)
  binary_array = []
  binary_value = 128
  new_value = decimal_number
  
  8.times do |i|
    if new_value >= binary_value
      binary_array << 1
      new_value -= binary_value
      binary_value /= 2
    else
      binary_array << 0
      binary_value /= 2
    end
    
  end
  
  return binary_array
  
end
