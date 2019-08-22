
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.




def binary_to_decimal(binary_array)
  # CHECK if argument is valid
  if binary_array.class != Array
    raise ArgumentError, "We need an array"
  elsif binary_array.length != 8
    raise ArgumentError, "Array needs to have 8 elements"
  end
  
  # ESTABLISH the model of binary values according to digit placement
  binary_model = [1]
  (binary_array.length - 1).times do
    prev_value = binary_model[0]
    binary_model.unshift(prev_value * 2)
  end

  # INITIALIZE answer variable
  answer = 0

  # back to binary_array
  binary_array.length.times do |index|
    element = binary_array[index]

    # check if element is valid
    unless [0,1].include? element
      raise ArgumentError, "#{element} must be 0 or 1"

    else 
      # start calculation
      value = element * binary_model[index]
      answer += value
    end
  end
  return answer
end
