puts "4 + 5 = #{4 + 5} (double quotes -> interpolation)"
puts '4 + 5 = #{4 + 5} (single quotes -> no interpolation)'
str_long = <<EOM
> Very long string
> with multiple lines
> 4 + 5 = #{4 + 5}
EOM
puts str_long
s1 = "str1"
s2 = "str2"
s3 = "#{s1}-#{s2}"
puts "s1 ........................... " + s1
puts "s2 ........................... " + s2
puts "s3 ........................... " + s3
puts 's3.include?("st") ............ ' + s3.include?("st").to_s
puts "s3.size ...................... " + s3.size.to_s
puts 's3.count("aeiou") ............ ' + s3.count("aeiou").to_s + " vowels"
puts 's3.count("^aeiou") ........... ' + s3.count("^aeiou").to_s + " consonants"
puts 's3.start_with?("str") ........ ' + s3.start_with?("str").to_s
puts 's3.index("tr") ............... ' + s3.index("tr").to_s
puts "a == a ....................... " + ("a" == "a").to_s
puts '"a".equal?("a") .............. ' + ("a".equal?"a").to_s
puts "s1.equal?s1 .................. " + (s1.equal?s1).to_s
puts "s3.upcase .................... " + s3.upcase
puts "s3.downcase .................. " + s3.downcase
puts "s3.swapcase .................. " + s3.swapcase
puts "s3.lstrip .................... " + s3.lstrip
puts "s3.rstrip .................... " + s3.rstrip
puts "s3.strip ..................... " + s3.strip
puts "s3.rjust(20,'*') ............. " + s3.rjust(20,'*')
puts "s3.ljust(20,'*') ............. " + s3.ljust(20,'*')
puts "s3.center(20,'*') ............ " + s3.center(20,'*')
puts "s3.chop ...................... " + s3.chop
puts "s3.chomp ..................... " + s3.chomp
puts "s3.chomp('2') ................ " + s3.chomp('2')
puts 's3.delete("s") ............... ' + s3.delete("s")
puts "s3.split(//).to_s ............ " + s3.split(//).to_s
puts "s3.split(/ /).to_s ........... " + s3.split(/ /).to_s
puts "s3.split(/-/).to_s ........... " + s3.split(/-/).to_s
puts '"a".to_i ..................... ' + "a".to_i.to_s
puts '"2".to_f ..................... ' + "2".to_f.to_s
puts '"2".to_sym ................... ' + "2".to_sym.to_s
