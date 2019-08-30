# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

# every digit in this binary array list is a bit 
def binary_to_decimal(binary_array) # binary_array = [1, 0, 0, 1, 1, 0, 0, 1] 153

  exp = binary_array.length - 1 
  result = 0
  #8 - 1 = 7
  binary_array.each do |num|
    dec = num * (2**exp) # 0
    result += dec #128 + 0
    # puts dec #0
    exp -= 1 # 6
    # puts num
  end
  return result
end
  
# list = [1,1,0,1,1,0,0,1]
# binary_to_decimal(list)
