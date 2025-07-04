# 'require' is used instead of 'require_relative' because 'wt.rb' is
# using 'eval()' to run this code. Otherwise the following happens:
#   require_relative': cannot infer basepath (LoadError)
#require_relative "mod1"
#require_relative "mod2"
require "./examples/mod1.rb"
require "./examples/mod2.rb"
class CA
  include Mod1
  prepend Mod2
  def info
    return "CA.info()"
  end
end
obj = CA.new
obj.name = "obj.name"
puts "> puts obj.name"
puts obj.name
puts "> obj.run"
obj.run
puts "> puts obj.info"
puts obj.info
module Mod3
  def say_hello
    puts "Mod3.say_hello(); class = '" + self.class.to_s + "'"
  end
end
class CB
  include Mod3
end
CB.new.say_hello
