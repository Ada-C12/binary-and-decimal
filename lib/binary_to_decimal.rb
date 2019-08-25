# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)

  length = binary_array.length
  counter = 0
  decimal_array = []
  length.times do 
    decimal_array << 2 ** counter
    counter += 1
  end

  decimal_number = 0
  index = -1
  binary_array.each do |element|
    decimal_number += element*decimal_array[index]
    index -=1
  end

  return decimal_number

end
