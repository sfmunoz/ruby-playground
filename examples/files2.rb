fname = "people.txt"
fp = File.new(fname, "w")
fp.puts "Arthur,23"
fp.puts "Betty,24"
fp.puts "Carl,25"
fp.puts "Danielle,22"
fp.close
File.open(fname) do |record|
  record.each do |item|
    name, age = item.chomp.split(',')
    puts "'#{name}' is '#{age}' years old"
  end
end
File.delete(fname)
