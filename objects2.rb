class Animal
  #attr_reader :name, :age
  #attr_writer :name, :age
  attr_accessor :name, :age
  def initialize(name,age)
    self.name = name
    self.age = age
  end
  def to_s
    "Animal(#{self.name},#{self.age})"
  end
end
class Mammal < Animal
  attr_accessor :legs
  def initialize(name,age,legs)
    super(name,age)
    self.legs = legs
  end
  def to_s
    "Mammal(#{super()},#{self.legs})"
  end
end
tom = Animal.new "Tom",10
puts tom
rocky = Mammal.new "Rocky",12,4
puts rocky
