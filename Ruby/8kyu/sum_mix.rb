=begin

Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers.

Return your answer as a number.

=end

#My solution
def sum_mix(x)
  x.sum(&:to_i)
end