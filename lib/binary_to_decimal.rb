def binary_to_decimal(binary_array)
  i = 7
  sum = 0
  binary_array.each_with_index do |binary_num, index|
    binary_num = (binary_num * ((2) ** i))
    i -= 1
    sum = sum + binary_num
  end 
  return sum
end