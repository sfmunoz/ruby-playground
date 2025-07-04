class C0
  def name(o)
    puts "<debug> C0.name()"
    o.name
  end
end
class C1 < C0
  def name
    puts "<debug> C1.name()"
    puts "C1"
  end
end
class C2 < C0
  def name
    puts "<debug> C2.name()"
    puts "C2"
  end
end
obj = C0.new
obj.name(C1.new)
obj.name(C2.new)
