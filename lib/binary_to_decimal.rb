# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  decimal_array = []
  binary_array.each_with_index do |binary_num, index|
    power_of = (binary_array.length - index) - 1
    decimal_array.push(binary_num * (2 ** power_of))
  end
  
  decimal = 0
  decimal_array.each do |decimal_component|
    decimal += decimal_component
  end
  return decimal
end