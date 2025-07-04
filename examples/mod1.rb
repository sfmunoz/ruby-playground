module Mod1
  attr_accessor :name
  def run
    puts "Mod1.run(): self.name = " + self.name + "; class = '" + self.class.to_s + "'"
  end
end
