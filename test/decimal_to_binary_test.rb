require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/decimal_to_binary'

describe "decimal to binary" do
  
  it "From 153 to 10011001" do
    decimal_number = 153
    expected_binary = [1, 0, 0, 1, 1, 0, 0, 1]
    
    output_binary = decimal_to_binary(decimal_number)
    
    expect(output_binary).must_equal expected_binary
  end
  
  it "From 13 to 00001101" do
    decimal_number = 13
    expected_binary = [1, 1, 0, 1]
    
    output_binary = decimal_to_binary(decimal_number)
    
    expect(output_binary).must_equal expected_binary
  end
  
  it "From random decimal to binary" do
    decimal_number = rand(257)
    expected_binary = decimal_number.to_s(2).split("").map { |digit| digit.to_i }
    
    output_binary = decimal_to_binary(decimal_number)
    
    expect(output_binary).must_equal expected_binary
  end
  
end