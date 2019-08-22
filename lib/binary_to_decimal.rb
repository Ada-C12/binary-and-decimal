# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  if binary_array.class != Array
    raise ArgumentError, 'Input is not an array.'
  end
  
  decimal = 0
  
  binary_array.each_with_index do |bit, i|
    if bit == 1
      decimal += 2**(7-i)
    end
  end
  
  return decimal
end

def find_num_places(num)
  cur_exponent = 0
  while 2**cur_exponent <= num
    cur_exponent += 1
  end
  return cur_exponent
end

def decimal_to_binary(num)
  length_binary = find_num_places(num)
  binary_array = []
  # binary_array = Array.new(most_sig_place)
  
  length_binary.times do |i|
    if num - 2**(length_binary-i-1) >= 0
      binary_array << 1
      num -= 2**(length_binary-i-1)
    else
      binary_array << 0
    end
  end
  
  return binary_array
end

# p find_num_places(4) #3
# p find_num_places(7) #3
# p find_num_places(17) #5

p decimal_to_binary(5)
p decimal_to_binary(7)
p decimal_to_binary(12)
p decimal_to_binary(16)
p decimal_to_binary(17)
