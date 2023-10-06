require_relative 'my_enumerable'
class MyList
  include MyEnumerable
  attr_reader :list

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # Should print: true
puts(list.all? { |e| e > 5 }) # Should print: false

# Test #any?
puts(list.any? { |e| e == 2 }) # Should print: true
puts(list.any? { |e| e == 5 }) # Should print: false8

# Test #filter
p(list.filter(&:even?)) # Should print: [2, 4]
