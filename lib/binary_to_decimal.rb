def binary_to_decimal(binary_array)
  total = 0
  index = binary_array.length - 1
  exp = 0
  binary_array.each do |digit|
    total += binary_array[index] * (2 ** exp)
    index -= 1
    exp += 1
  end
  return total
end


def get_exp(int)
  int.to_i
  exp = 0
  until (2 ** exp * 2) > int
    exp += 1
  end
  return exp
end

def decimal_to_binary(int)
  answer = 0
  until int == 0
    exp = get_exp(int)
    int -= (2 ** exp)
    answer += 1 * (10 ** exp)
  end
  return answer
end
