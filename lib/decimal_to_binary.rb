

def decimal_to_binary(number)
  
  # verifies the number is valid
  if number > 255
    raise ArgumentError.new "number is out of descriptive range"
  end
  
  # converts number to binary, uses index position to use as exponent
  binary_array = []
  8.times do |i|
    if number >= (2 ** ( 7 - i ))
      binary_array.push(1)
      number = number - (2 ** ( 7 - i ))
    else
      binary_array.push(0)
    end
  end
  
  return binary_array
  
end

# number = rand (0..255)

# # calls decimal_to_binary
# puts "Decimal: #{number} --> Binary: #{decimal_to_binary(number)}"
