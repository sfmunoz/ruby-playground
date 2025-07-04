val = 60
if val < 4
  puts "Too low"
elsif val >= 4 && val <= 20
  puts "That's OK"
else
  unless val > 50
    puts "Too high"
  else
    puts "Far too high"
  end
end
