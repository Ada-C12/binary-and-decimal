require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/binary_to_decimal'

describe "binary to decimal" do
  it "From 10011001 to 153" do
    binary_array = [1, 0, 0, 1, 1, 0, 0, 1]
    expected_decimal = 153
    
    binary_to_decimal(binary_array).must_equal expected_decimal
  end
  
  it "From 00001101 to 13" do
    binary_array = [0, 0, 0, 0, 1, 1, 0, 1]
    expected_decimal = 13
    
    binary_to_decimal(binary_array).must_equal expected_decimal
  end
  
  it "From 10000000 to 128" do
    binary_array = [1, 0, 0, 0, 0, 0, 0, 0]
    expected_decimal = 128
    
    binary_to_decimal(binary_array).must_equal expected_decimal
  end
  
  it "From random binary to decimal" do
    binary_array = Array.new(8) { rand(0..1) }
    expected_decimal = binary_array.join.to_s.to_i(2)
    
    binary_to_decimal(binary_array).must_equal expected_decimal
  end
end

describe "decimal to binary" do
  it "Returns an array" do
    expect(decimal_to_binary(54)).must_be_kind_of Array
  end
  
  it "Returns the correct binary output when given a number" do
    expect(decimal_to_binary(5)).must_equal [1,0,1]
    expect(decimal_to_binary(7)).must_equal [1,1,1]
    expect(decimal_to_binary(12)).must_equal [1,1,0,0]
    expect(decimal_to_binary(16)).must_equal [1,0,0,0,0]
    expect(decimal_to_binary(17)).must_equal [1,0,0,0,1]
  end
  
  it "Returns [1] when given 1" do
    expect(decimal_to_binary(1)).must_equal [1]
  end
  
  it "Returns [1,0] when given 2" do
    expect(decimal_to_binary(2)).must_equal [1,0]
  end
  
  it "Returns [] when given 0" do
    expect(decimal_to_binary(0)).must_equal []
  end
end
