h1 = {"k1"=>1.1,"k2"=>2.2,"k3"=>3.3}
puts "h1 ................................... " + h1.to_s
puts 'h1["k1"] ............................. ' + h1["k1"].to_s
h2 = Hash["k10", "v10", "k11", "v11"]
puts "h2 ................................... " + h2.to_s
puts 'h2["k10"] ............................ ' + h2["k10"]
h2["k12"] = "v12"
puts 'h2["k12"] = "v12" -> h2 .............. ' + h2.to_s
h3 = Hash["k13","v13","k14","v14"]
puts "h3 ................................... " + h3.to_s
h2.update(h3)
puts "h2.update(h3) -> h2 .................. " + h2.to_s
h2.each do |k,v|
  puts "  <h2.each> h2[" + k.to_s + "] = " + v
end
puts 'h2.has_key?("k10") ................... ' + h2.has_key?("k10").to_s
puts 'h2.has_key?("k20") ................... ' + h2.has_key?("k20").to_s
puts 'h2.has_value?("v10") ................. ' + h2.has_value?("v10").to_s
puts 'h2.has_value?("v20") ................. ' + h2.has_value?("v20").to_s
puts "h2.empty? ............................ " + h2.empty?.to_s
puts "h2.size .............................. " + h2.size.to_s
h2.delete("k13")
puts 'h2.delete("k13") -> h2 ............... ' + h2.to_s
puts "h2.size .............................. " + h2.size.to_s
h4 = Hash.new("no such key")
puts 'h4=Hash.new("no such key") -> h4 ..... ' + h4.to_s
puts 'h4["k"] .............................. ' + h4["k"]
