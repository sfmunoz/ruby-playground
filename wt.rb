RB_FILES = [
  "data_types.rb",
  "if-elsif-else.rb",
  "case-when.rb",
  "ternary-operator.rb",
  "loop.rb",
  "loop-while.rb",
  "loop-until.rb",
  "loop-for.rb",
  "functions.rb",
  "exceptions.rb",
  "strings.rb",
  "objects1.rb",
  "objects2.rb",
  "polymorphism.rb",
  "mod0.rb",
  "symbols.rb",
  "arrays.rb",
  "hashes.rb",
  "enumerable.rb",
  "files1.rb",
  "files2.rb",
]

class String
  def is_integer?
    self.to_i.to_s == self
  end
end

def menu_print(cols)
  col_step = 8 + RB_FILES.max_by {|s| s.length}.length
  tot = RB_FILES.length
  RB_FILES.each_with_index do |rb_file, i|
    x = sprintf "%3d. %s",i,rb_file
    print x.ljust(col_step,' ')
    if i % cols == cols - 1 or i == tot - 1 then puts end
  end
end

def run_file(rb_file)
  puts("======== #{rb_file} ========")
  code = File.read("examples/" + rb_file)
  puts code
  puts("-------- #{rb_file} --------")
  print "Press <ENTER> to run it..."
  gets
  puts("======== #{rb_file} ========")
  eval(code)
  puts("-------- #{rb_file} --------")
end

loop do
  menu_print(4)
  print "Choose file to run (<ENTER> to exit): "
  input = gets.chomp
  if input.length == 0 then
    puts "bye!"
    exit 0
  end
  if ! input.is_integer? then
    puts "error: '#{input}' is not an integer"
    next
  end
  opt = input.to_i
  if opt < 0 or opt >= RB_FILES.length then
    puts "error: '#{opt}' is not an option"
    next
  end
  run_file RB_FILES[opt]
end

