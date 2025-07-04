# ArgumentError < StandardError < Exception < Object
begin
  res = 3 / 0
  puts "res: #{res}"
rescue ZeroDivisionError => e   # alt / default: just 'rescue'
  puts "1st error: #{e}"
end
def check_value(value)
  raise ArgumentError, "value=#{value} (it must be positive)" unless value > 0
end
begin
  check_value(-1)
rescue ArgumentError => e
  puts "2nd error: #{e}"
end
