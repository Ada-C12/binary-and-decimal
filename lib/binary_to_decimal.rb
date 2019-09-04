# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
# index_array = [0, 1, 2, 3, 4]
# binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
# #we want to take the length minus one, and that will be what 2 is to the power of at the first element

# (1 * 2^7) + (0 * 2^6) ... + (1 * 2^0)
# = 153
#So i could break this down by saying .. 
#I want to find the length of the total array (.length)
#Assign .length to a variable, length
#I want to loop through every element in the array
#I want to multiply each element by 2 to the power of length - 1
#I want to put all of those new values into a new array
#I want to get the sum of all of those new numbers 
 

def binary_to_decimal(binary_array)
  size = binary_array.length
  total = 0

  binary_array.each_with_index do |number, index|
    total += number * ( 2 ** (size - index - 1) )
  end 
  return total
end


puts binary_to_decimal([1, 0, 0, 1, 1, 0, 0, 1])
