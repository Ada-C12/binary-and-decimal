# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  n = binary_array.length - 1
  m = 0
  r = 0

  if binary_array.class != Array
    # Not really sure if we need to implement this expection
    # Or what situation this exception applies...
    # Assuming and implementing as input validation
    raise NotImplementedError
  else
    until n < 0 
      r += binary_array[n] * (2 ** m)
      n -= 1
      m += 1
    end 
  end
  
  return r
end