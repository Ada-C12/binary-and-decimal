
def binary_to_decimal(binary_array)
  sum = 0
  decimal_array =  [128, 64, 32, 16, 8, 4, 2, 1]
  binary_array.each_with_index do |number, index|
    if number == 1
      sum += decimal_array[index] 
    end 
  end
  return sum
end