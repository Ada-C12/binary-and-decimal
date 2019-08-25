require 'pry'

def decimal_to_binary(decimal)
  power = 0
  while (2 ** power) <= decimal
    power += 1
  end 
  power -= 1 
  binary_array = []
  while power >= 0 
    if decimal / (2 ** power) > 0
      binary_array << 1
      decimal = decimal % (2 ** power)
    else
      binary_array << 0
    end 
    power -= 1 
  end
  binary_array 
end 
