=begin

Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).
Examples:
solution('abc', 'bc') // returns true
solution('abc', 'd') // returns false

=end

#Solution
def solution(str, ending)
  return true if ending == ""
  str.slice(0-ending.length..-1) == ending
end

#Other solution
def solution(str, ending)
  str.end_with?(ending)
end