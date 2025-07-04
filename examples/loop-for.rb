numbers = [1, 2, 3, 4, 5]
for number in numbers
  puts "<number> #{number}"
end
items = ["item-a", "item-b", "item-c"]
items.each do |i|
  puts "<item> #{i}"
end
(0..5).each do |i|
  puts "<each> #{i}"
end
