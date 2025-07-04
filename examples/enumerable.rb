class Items
  include Enumerable
  def each
    yield "one"
    yield "two"
    yield "three"
    yield "four"
    yield "five"
  end
end
items = Items.new
items.each do |item|
  puts "<items.each> #{item}"
end
puts '$ p items.find {|item| item == "three"}'
p items.find {|item| item == "three"}
puts '$ p items.select {|item| item.size <= 3}'
p items.select {|item| item.size <= 3}
puts '$ p items.reject {|item| item.size <= 3}'
p items.reject {|item| item.size <= 3}
puts '$ p items.first'
p items.first
puts '$ p items.take(3)'
p items.take(3)
puts '$ p items.drop(2)'
p items.drop(2)
puts '$ p items.min -> alphabetical order'
p items.min
puts '$ p items.max -> alphabetical order'
p items.max
puts '$ p items.sort'
p items.sort
puts '$ items.reverse_each {|item| puts item}'
items.reverse_each {|item| puts item}
