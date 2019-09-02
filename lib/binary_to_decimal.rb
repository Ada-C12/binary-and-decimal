# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  decimal_array = []
  
  # make sure array is 8 digits. If not, raise an error
  if binary_array.length != 8
    raise NotImplementedError.new("Please provide an array with eight elements")
  end
  
  # assign decimal values to binary digits and put them in an array
  
  if binary_array[0] == 1
    decimal_array << 128
  end
  
  if binary_array[1] == 1
    decimal_array << 64
  end
  
  if binary_array[2] == 1
    decimal_array << 32
  end
  
  if binary_array[3] == 1
    decimal_array << 16
  end
  
  if binary_array[4] == 1
    decimal_array << 8
  end
  
  if binary_array[5] == 1
    decimal_array << 4
  end
  
  if binary_array[6] == 1
    decimal_array << 2
  end
  
  if binary_array[7] == 1
    decimal_array << 1
  end
  
  # total the array of decimal values
  decimal_value = add_elements(decimal_array)
  
  return decimal_value
  
end

# writing my own .sum method
def add_elements(decimal_array)
  total = 0
  decimal_array.each do |number|
    total += number
  end
  return total
end

