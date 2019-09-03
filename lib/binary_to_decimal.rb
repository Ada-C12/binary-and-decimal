# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
# this_array should equal 227

def binary_to_decimal(binary_array)
  exponent = (binary_array.length) - 1
  num = 0
    
  binary_array.each do |i|
    num += (i * 2 ** exponent)
    exponent -= 1
  end
  return num
end

this_array = [1, 1, 1, 0, 0, 0, 1, 1]
binary_to_decimal(this_array)