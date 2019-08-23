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
  exp = 0
  until (2 ** exp * 2) > int
    exp += 1
  end
  return exp
end

def decimal_to_binary_int(int)
  answer = 0
  until int == 0
    exp = get_exp(int)
    int -= (2 ** exp)
    answer += 1 * (10 ** exp)
  end
  return answer
end

def decimal_to_binary_array(int)
  answer_array = []
  exp = get_exp(int)
  until exp < 0
    if int - 2 ** exp >= 0
      int -= (2 ** exp)
      answer_array << 1
    else
      answer_array << 0
    end
  exp -= 1
  end
  return answer_array
end
