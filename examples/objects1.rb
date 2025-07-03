class Animal
  def initialize(name)
    puts "<debug> Animal.initialize(#{name})"
    self.name = name
  end
  def name
    puts "<debug> Animal.name()"
    @name
  end
  def name=(new_name)
    puts "<debug> Animal.name=(#{new_name})"
    @name = new_name
  end
  def to_s
    puts "<debug> Animal.to_s()"
    "Animal(#{self.name})"
  end
end
tom = Animal.new "Tom"
puts tom
tom.name = "Mr.Tom"
puts tom
