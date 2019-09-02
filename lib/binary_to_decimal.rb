# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  decimal = 0
  exponent = 7
  
  binary_array.each do |digit|
    decimal += (digit * (2**exponent)) 
    exponent -= 1
  end
  return decimal
  raise NotImplementedError
end


def decimal_to_binary(num)
  binary_number = (num % 2).to_s
  num = num / 2 
  
  until num == 0
    modulo = (num % 2).to_s
    num = num / 2 
    binary_number = modulo+binary_number
  end
  
  binary_array = binary_number.split(//)
  binary_array.map! {|num| num = num.to_i}
  return binary_array
  #psuedocode notes:
  # take the number mod 2, remainder goes in the array[0] position
end
# Add a `decimal_to_binary` method which converts a decimal number 
# received as a parameter into an array of binary digits.  
# Then write 3 tests for the method.


