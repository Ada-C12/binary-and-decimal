# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
#[10110010]
#[76543210]
require 'pry'

def binary_to_decimal(binary_array)
  decimal = 0
  binary_array.each_with_index { |number, index|
    if number == 1
      decimal += 2 ** (7 - index)
    end 
  }
  return decimal 
end
