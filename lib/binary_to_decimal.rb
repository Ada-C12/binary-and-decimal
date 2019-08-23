# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

def binary_to_decimal(binary_array)
  raise ArgumentError.new "nil binary inputed" if binary_array == nil
  
  values = []
  arraylength = binary_array.length
  binary_array.each do |bit|
    arraylength -= 1
    value = bit * (2 ** arraylength)
    values << value
  end
  
  sum = 0
  values.each do |value|
    sum += value
  end

  return sum
end

    
def reverse(array)
  reversed = []
  until array.empty? do
      reversed << array.pop
  end
  return reversed
end


def decimal_to_binary(decimal)
  raise ArgumentError.new "nil binary inputed" if decimal == nil

    remainders = []
    value = decimal
    until value == 0
      remainder = value % 2
      remainders << remainder
      value = (value / 2).to_i
    end
    
    result = []
    until remainders.empty? do
        result << remainders.pop
    end

    return result
end






