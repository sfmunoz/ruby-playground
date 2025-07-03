fname = "people.txt"
fp = File.new(fname, "w")
fp.puts "Arthur"
fp.puts "Betty"
fp.puts "Carl"
fp.close
puts File.read(fname)
fp = File.new(fname, "a")
fp.puts "Danielle"
fp.close
puts File.read(fname)
File.delete(fname)
