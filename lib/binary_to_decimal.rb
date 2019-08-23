# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  raise ArgumentError.new "nil binary inputed" if binary_array == nil
  
  # filter through array multiplying the num by 2 ^ exponent - exponent starts at length of array (8) and decreases with each iteration of the loop
  values = []
  exponent = binary_array.length
  binary_array.each do |bit|
    exponent -= 1
    value = bit * (2 ** exponent)
    values << value
  end
  
  # not allowed to use .sum - iterate through array to calculate sum
  sum = 0
  values.each do |value|
    sum += value
  end

  return sum
end

    
def reverse(array)
  result = []
  until array.empty? do
    result << array.pop
  end

  return result
end


def decimal_to_binary(decimal)
  raise ArgumentError.new "nil binary inputed" if decimal == nil

  remainders = []
  value = decimal
  until value == 0
    remainder = value % 2
    remainders << remainder
    value = (value / 2).to_i
  end
    
# call reverse method above to reverse stored remainders array to get binary number in correct order
  result = reverse(remainders)

  return result
end






