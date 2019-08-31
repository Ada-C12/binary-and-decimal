# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  exponent_array = [2**7, 2**6, 2**5, 2**4, 2**3, 2**2, 2**1, 2**0]
  result_array = []
  index = 0
  while result_array.length < binary_array.length
    (binary_array[index]).zero? ? num_to_add = 0 : num_to_add = binary_array[index] * exponent_array[index]
    result_array << num_to_add
    index += 1
  end
  result_array.sum
end
