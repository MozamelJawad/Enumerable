require_relative 'my_list'
require_relative 'my_enumerable'

class MyList
  include MyEnumerable
end

# Create our list
list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # Should print: true
puts(list.all? { |e| e > 5 }) # Should print: false

# Test #any?
puts(list.any? { |e| e == 2 }) # Should print: true
puts(list.any? { |e| e == 5 }) # Should print: false8

# Test #filter
p(list.filter(&:even?)) # Should print: [2, 4]
