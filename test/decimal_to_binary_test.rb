require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/decimal_to_binary'

describe "decimal to binary" do
  it "From 13 to 1101" do
    decimal_number = 13
    expected_binary = [1, 1, 0, 1]
    
    decimal_to_binary(decimal_number).must_equal expected_binary
  end
  
  it "From 5 to 101" do
    decimal_number = 5
    expected_binary = [1, 0, 1]
    
    decimal_to_binary(decimal_number).must_equal expected_binary
  end
  
  it "From 14 to 1110" do
    decimal_number = 14
    expected_binary = [1, 1, 1, 0]
    
    decimal_to_binary(decimal_number).must_equal expected_binary
  end
  
  it "From random decimal to binary" do
    random_decimal = rand(0..50)
    expected_binary = random_decimal.to_s(2).split("").map(&:to_i)
    
    decimal_to_binary(random_decimal).must_equal expected_binary
  end
end
