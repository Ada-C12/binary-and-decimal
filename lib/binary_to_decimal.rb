
def binary_to_decimal(binary_array)
  decimal = 0
  exponent = 7
  
  binary_array.each do |digit|
    decimal += (digit * (2**exponent)) 
    exponent -= 1
  end
  return decimal
end


def decimal_to_binary(num)
  
  binary_number = (num % 2).to_s
  num /= 2
  until num == 0
    modulo = (num % 2).to_s
    num /= 2
    binary_number = modulo+binary_number
  end
  binary_array = binary_number.split(//)
  return binary_array.map! {|digit| digit = digit.to_i}
end

