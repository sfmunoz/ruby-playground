i = 1
while i <= 10
  i += 1
  next unless i % 2 == 0
  puts "<loop-1> " + i.to_s
end
i = 1
begin
  i += 1
  next unless i % 2 == 0
  puts "<loop-2> " + i.to_s
end while i <= 10
