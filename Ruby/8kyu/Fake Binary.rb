=begin

Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.

=end

#Solution
def fake_bin(s)
  (0..s.length-1).each do |i|
    s[i].to_i < 5 ? s[i] = '0' : s[i] = '1'
  end
  s
end

#Better solution
def fake_bin(s)
  s.gsub(/[0-4]/,'0').gsub(/[5-9]/, '1')
end
