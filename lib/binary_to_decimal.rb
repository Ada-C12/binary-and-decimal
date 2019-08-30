# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  array = binary_array
  power = 7
  decimal_value = 0
  array.each do |bit|
    decimal_value += bit * (2 ** power)
    power -= 1
  end
  return decimal_value
  #raise NotImplementedError
end

def decimal_to_binary(decimal_number)
  number = decimal_number
  binary_num = []
  while number > 1
    mod = number % 2
    binary_num.push(mod)
    number = (number - mod)/2
  end
  binary_num.push(number)
  return binary_num
end
