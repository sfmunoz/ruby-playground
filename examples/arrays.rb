puts "Array.new ........................ " + Array.new.to_s
puts "Array.new(5) ..................... " + Array.new(5).to_s
puts 'Array.new(5,"empty") ............. ' + Array.new(5,"empty").to_s
arr = [0,"one","two",3.33,4.2]
puts "arr .............................. " + arr.to_s
puts "arr[2] ........................... " + arr[2].to_s
puts 'arr[2,2].join("|") ............... ' + arr[2,2].join("|")
puts 'arr.values_at(0,1,3).join("|") ... ' + arr.values_at(0,1,3).join("|")
arr.unshift(88)
puts "arr.unshift(88) -> arr ........... " + arr.to_s
arr.shift()
puts "arr.shift() -> arr ............... " + arr.to_s
arr.push(100,200)
puts "arr.push(100,200) -> arr ......... " + arr.to_s
arr.pop
puts "arr.pop -> arr ................... " + arr.to_s
arr.concat([10,20,30])
puts "arr.concat([10,20,30]) -> arr .... " + arr.to_s
puts "arr.size() ....................... " + arr.size().to_s
puts "arr.include?(100) ................ " + arr.include?(100).to_s
puts "arr.count(100) ................... " + arr.count(100).to_s
puts "arr.empty? ....................... " + arr.empty?.to_s
puts "p arr = (...next line...)"
p arr
arr.each_with_index do |v, i|
  puts "> arr[#{i}] = #{v}"
end
