
require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/decimal_to_binary'

describe "decimal_to_binary" do
  
  it "checks the length of the output" do
    valid_value = 189
    expected_length = 8
    measured_length = (decimal_to_binary(valid_value)).length
    expect measured_length.must_equal expected_length
  end
  
  it "verifies the value being passed in is valid" do 
    invalid_value = 1000
    expect {
      decimal_to_binary(invalid_value)
    }.must_raise ArgumentError
  end
  
  it "verifies the accuracy of decimal_to_binary" do  
    valid_value = 79
    expected_value = [0,1,0,0,1,1,1,1]
    expect(decimal_to_binary(valid_value)).must_equal expected_value
  end
end


