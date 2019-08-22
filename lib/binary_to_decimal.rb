# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

require 'pry'

def binary_to_decimal(binary_array)
  if binary_array.class != Array
    raise ArgumentError, 'Input is not an array.'
  end
  
  decimal = 0
  
  binary_array.each_with_index do |bit, i|
    if bit == 1
      decimal += 2**(7-i)
    end
  end
  
  return decimal
end

# Determines the length of a binary array given a decimal number.
def find_length_of_binary(num)
  cur_exponent = 0
  
  # while the current power of 2 is not large enough to be greater than or equal to the decimal
  while 2**cur_exponent <= num
    # increase the exponent by 1
    cur_exponent += 1
  end
  
  return cur_exponent
end

# Returns an array representing the binary form of a decimal number. 
def decimal_to_binary(num)
  length_binary = find_length_of_binary(num)
  binary_array = []
  
  length_binary.times do |i|
    # If the current power of 2 can be subtracted from the input, 
    # add a 1 to the binary array
    if num - 2**(length_binary-i-1) >= 0
      binary_array << 1
      num -= 2**(length_binary-i-1)
      # Otherwise put a 0. 
    else
      binary_array << 0
    end
  end
  
  return binary_array
end
