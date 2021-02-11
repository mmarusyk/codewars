=begin
This kata is about converting numbers to their binary or hexadecimal representation:

If a number is even, convert it to binary.
If a number is odd, convert it to hex.
=end

# My solution
def evensAndOdds(n)
  n.even? ? n.to_s(2) : n.to_s(16)
end

# Better solution
def evensAndOdds(n)
  n.to_s(n.even? ? 2 : 16)
end
