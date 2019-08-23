# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  total = 0
  power = 0
  index = -1
  
  while power < binary_array.length
    number = binary_array[index] * (2 ** power)
    total += number
    
    index -= 1
    power += 1
  end
  
  return total
end





# Add a decimal_to_binary method which converts a decimal number received as a parameter into an array of binary digits. Then write 3 tests for the method.