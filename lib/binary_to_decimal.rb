# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  return nil if binary_array.nil?
  dec_num = 0
  binary_array.each_with_index do |digit, index|
    dec_num += (digit * 2**(binary_array.length - 1 - index))
  end
  return dec_num
  
end

def decimal_to_binary(dec_num)
  return nil if dec_num.nil?
  binary_array = []
  digits = Math::log(dec_num, 2).to_i 
  (digits + 1).times do |i|
    num = 2 ** (digits - i) 
    digit = (dec_num - num >= 0)? 1 : 0
    binary_array << digit 
    dec_num -= num * digit
  end
  return binary_array


end


decimal_to_binary(5)