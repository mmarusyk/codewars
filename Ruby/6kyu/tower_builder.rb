=begin

Build Tower

Build Tower by the following given argument:
number of floors (integer and always greater than 0).

Tower block is represented as *

    Python: return a list;
    JavaScript: returns an Array;
    C#: returns a string[];
    PHP: returns an array;
    C++: returns a vector<string>;
    Haskell: returns a [String];
    Ruby: returns an Array;

Have fun!

for example, a tower of 3 floors looks like below

[
  '  *  ', 
  ' *** ', 
  '*****'
]

and a tower of 6 floors looks like below

[
  '     *     ', 
  '    ***    ', 
  '   *****   ', 
  '  *******  ', 
  ' ********* ', 
  '***********'
]

=end

#My solution
def towerBuilder(n_floors)
  tower = []
  floors = n_floors*2 -1
  for n in 0...n_floors
    str=""
    starts = n+n+1
    for j in 0...(floors-starts) / 2
        str+=" "
    end
    for i in 0...starts
      str +="*"
    end
    for j in 0...(floors-starts) / 2
        str+=" "
    end
    tower[n] = str
  end
  return tower
end

#Better solution
def towerBuilder(n_floors)
  (1..n_floors).map do |i|
    space = ' ' * (n_floors - i)
    stars = '*' * (i * 2 - 1)
    space + stars + space
  end
end