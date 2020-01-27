=begin

Given an array, find the integer that appears an odd number of times.

There will always be only one integer that appears an odd number of times.

=end

#My solution
def find_it(seq)
  seq.reduce(:^)
end