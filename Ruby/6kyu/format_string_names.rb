=begin

Given: an array containing hashes of names

Return: a string formatted as a list of names separated by commas except for the last two names, which should be separated by an ampersand.

Example:

list([ {name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'} ])
# returns 'Bart, Lisa & Maggie'

list([ {name: 'Bart'}, {name: 'Lisa'} ])
# returns 'Bart & Lisa'

list([ {name: 'Bart'} ])
# returns 'Bart'

list([])
# returns ''

=end

#My solution
def list names
  return '' if names.count == 0

  return names[0][:name] if names.count == 1

  return "#{names[0][:name]} & #{names[1][:name]}" if names.count == 2

  str = "#{names[0][:name]}"

  names[1..-2].each_with_index do |h, i|
    str += ", #{h[:name]}"
  end

  str += " & #{names[-1][:name]}"
end

# Better solution
def list names
  names = names.map { |name| name[:name] }
  last_name = names.pop
  return last_name.to_s if names.empty?

  "#{names.join(', ')} & #{last_name}"
end
