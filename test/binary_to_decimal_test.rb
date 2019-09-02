require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/binary_to_decimal'
require 'minitest/pride'

describe "binary to decimal" do
  it "From 10011001 to 153" do
    binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    expected_decimal = 153
    
    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end
  
  it "From 00001101 to 13" do
    binary_array = [0, 0, 0, 0, 1, 1, 0, 1]
    expected_decimal = 13
    
    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end
  
  it "From 10000000 to 128" do
    binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    expected_decimal = 128
    
    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end
  
  it "From random binary to decimal" do
    binary_array = Array.new(8) { rand(0..1) }
    expected_decimal = binary_array.join.to_s.to_i(2)
    
    expect(binary_to_decimal(binary_array)).must_equal expected_decimal
  end
end


describe "decimal to binary" do
  it "Converts a decimal to its corresponding binary number" do
    number = 13
    expect(decimal_to_binary(number)).must_equal [1, 1, 0, 1]
  end
  
  it "Converts 0 to its corresponding binary number" do
    number = 0
    expect(decimal_to_binary(number)).must_equal [0]
  end
  
  it "Handles a large number" do
    number = 1_000
    expect(decimal_to_binary(number)).must_equal [1, 1, 1, 1, 1, 0, 1, 0, 0, 0]
  end
end