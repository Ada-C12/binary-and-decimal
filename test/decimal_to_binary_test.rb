require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/decimal_to_binary'

describe "binary to decimal" do
  it "From 153 to 10011001" do
    decimal_num = 153
    expected_binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    
    decimal_to_binary(decimal_num).must_equal expected_binary_array
  end
  
  it "From 13 to 1101" do
    decimal_num = 13
    expected_binary_array = [1, 1, 0, 1]
    
    decimal_to_binary(decimal_num).must_equal expected_binary_array
  end
  
  it "From 128 to 10000000" do
    decimal_num = 128
    expected_binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    
    decimal_to_binary(decimal_num).must_equal expected_binary_array
  end
  
  it "From -2 to -10" do
    decimal_num = -2
    expected_binary_array = [-1, -0]
    
    decimal_to_binary(decimal_num).must_equal expected_binary_array
  end
  
  # COME BACK
  it "Does something with fractional decimal numbers" do
    # decimal_num = -2
    # expected_binary_array = [-1, -0]
    
    # decimal_to_binary(decimal_num).must_equal expected_binary_array
  end
end
