# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(array)
  # verifies the input
  # creates a copy of the array then removes all "0" and "1" values from it. If anything is left, it raises an error
  array_v = Array.new(array)  
  array_v.delete(0)
  array_v.delete(1)
  if array_v.length > 0 
    raise ArgumentError.new "array included invalid inputs"
  end
  
  # checks that the length of the incoming array is 8
  puts "I am array length#{array.length}"
  if array.length < 8
    raise ArgumentError.new "array is invalid length"
  end
  
  # converts binary to decimal
  decimal = 0
  # puts array
  array.each_with_index do |digit, index|
    decimal = decimal + (digit * (2 ** (7-index)))
  end
  
  return decimal
end

# def binary_to_decimal(binary_array)
#   raise NotImplementedError
# end
