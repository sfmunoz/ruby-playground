def add(n1,n2)
  return n1 + n2
end
puts "add(3,4) = " + add(3,4).to_s
def updater(x)
  if x.class == Integer
    x = 4
  elsif x.class == Array
    x[0] = 4
  end
end
num = 0
puts "num = #{num} (before updater)"
updater(num)
puts "num = #{num} (after updater) -> unchanged (integer by-value)"
arr = [0]
puts "arr = #{arr} (before updater)"
updater(arr)
puts "arr = #{arr} (after updater) -> changed (array by-ref)"
