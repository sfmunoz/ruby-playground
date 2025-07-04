i = 1
loop do
  i += 1
  next unless i % 2 == 0
  puts i
  break if i >= 10
end
