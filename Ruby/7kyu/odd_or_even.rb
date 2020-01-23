=begin

Task:

Given an vector of numbers, determine whether the sum of all of the numbers is odd or even.

Give your answer as a String matching 'odd' or 'even'.

If the input array is empty consider it as: [0] (array with a zero).
Example:

odd_or_even(vec![0]) returns "even"
odd_or_even(vec![0, 1, 4]) returns "odd"
odd_or_even(vec![0, -1, -5]) returns "even"

Have fun!

=end

#My solution
def odd_or_even(array)
  if array.sum % 2 == 0
    return "even"
  else
    return "odd"
  end
end

#Better solution
def odd_or_even(array)
  array.sum.even? ? 'even' : 'odd'
end