# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  power_num = 0
  index = -1
  decimal_array = []
  decimal_number = 0

  binary_array.each do |num|
    sum_of_nums = binary_array[index] * (2 ** power_num)
    power_num += 1
    index -= 1

    decimal_array << sum_of_nums
  end

  decimal_array.each do |num|
    decimal_number += num
  end
  return decimal_number
  raise NotImplementedError
end

def decimal_to_binary(decimal_number)
  binary_array = []
  reversed_array = []
  index = -1

  until decimal_number == 0
    if decimal_number % 2 == 0
      reversed_array << 0
    else
      reversed_array << 1
    end
    decimal_number /= 2
  end

  reversed_array.each do |num|
    nums = reversed_array[index]
    index -= 1
    binary_array << nums
  end
  return binary_array
end
