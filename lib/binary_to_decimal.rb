# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  size = binary_array.length
  result = 0
  size.times {|index| result += binary_array[index] * (2**(size - 1 - index))}
  return result
end

def decimal_to_binary(decimal_number)
  if decimal_number == 0
    return [0]
  end
  
  result_in_reverse_order = Array.new
  while decimal_number != 0
    result_in_reverse_order << (decimal_number % 2)
    decimal_number = decimal_number / 2
  end
  # copy element in result_in_reverse_order to result in reverse order
  size = result_in_reverse_order.length
  result = Array.new(size)
  size.times do |index|
    result[size - 1 - index] = result_in_reverse_order[index]
  end
  return result
end