# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  result = 0
  binary_array.each_with_index do |bit, index|
    exponent = binary_array.length - index - 1
    result += bit * 2**exponent
  end
  return result
end

def decimal_to_binary(decimal_number)
  result = []
  num = decimal_number
  until num == 0
    remainder = num % 2
    num /= 2
    result << remainder
  end
  return result.reverse
end
