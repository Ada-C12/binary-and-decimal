require "minitest/autorun"
require "minitest/reporters"
require_relative "../lib/binary_to_decimal"

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
  it "Converts from 23 to 10111" do
    decimal_number = 23
    expected_bin_array = [1, 0, 1, 1, 1]
    decimal_to_binary(decimal_number).must_equal expected_bin_array
  end
  it "Converts from 108 to 1101100" do
    decimal_number = 108
    expected_bin_array = [1, 1, 0, 1, 1, 0, 0]
    decimal_to_binary(decimal_number).must_equal expected_bin_array
  end
  it "Converts from 1116 to 10001011100" do
    decimal_number = 1116
    expected_bin_array = [1, 0, 0, 0, 1, 0, 1, 1, 1, 0, 0]
    decimal_to_binary(decimal_number).must_equal expected_bin_array
  end
end
