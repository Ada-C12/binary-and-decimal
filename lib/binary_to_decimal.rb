# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  bit = binary_array.length - 1
  exponent = 0
  decimal_result = 0

  if binary_array.class != Array
    raise ArgumentError
  else
    until bit < 0 
      decimal_result += binary_array[bit] * (2 ** exponent)
      bit -= 1
      exponent += 1
    end 
  end
  
  return decimal_result
end