require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/decimal_to_binary'

describe "decimal_to_binary" do
  it "From 153 to 10011001" do
    decimal = 153
    expected_binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    
    decimal_to_binary(decimal).must_equal expected_binary_array
  end
  
  it "From 13 to 00001101" do
    decimal = 13
    expected_binary_array = [1, 1, 0, 1]
    
    decimal_to_binary(decimal).must_equal expected_binary_array
  end
  
  it "From 128 to 10000000" do
    decimal = 128
    expected_binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    
    decimal_to_binary(decimal).must_equal expected_binary_array
  end
  
  it "From 294 to 100100110" do
    decimal = 294
    expected_binary_array = [1, 0, 0, 1, 0, 0, 1, 1, 0] 
    decimal_to_binary(decimal).must_equal expected_binary_array
  end
  
  it "From random decimal to binary" do
    decimal = rand(0...300)
    expected_binary_array = decimal.digits(2).reverse
    
    decimal_to_binary(decimal).must_equal expected_binary_array
  end  
end
