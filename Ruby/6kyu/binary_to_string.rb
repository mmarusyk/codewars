=begin

Write a function that takes in a binary string and returns the equivalent decoded text (the text is ASCII encoded).

Each 8 bits on the binary string represent 1 character on the ASCII table.

The input string will always be a valid binary string.

Characters can be in the range from "00000000" to "11111111" (inclusive)

Note: In the case of an empty binary string your function should return an empty string.

=end

#My solution
def binary_to_string(binary)
  result = ""
  (0..binary.length-7).step(8) do |element|
    result+=binary[element, 8].to_i(2).chr
  end
  result
end

#Better solution
def binary_to_string(binary)
  [binary].pack('B*')
end