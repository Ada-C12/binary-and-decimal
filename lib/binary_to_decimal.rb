# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  total = 0
  array_length = binary_array.length 
  array_length.times do |index|
    increased_ammount = binary_array[index] * (2 ** (array_length -1 - index))
    total += increased_ammount
  end
  return total
end







