RB_FILES = [
  "data_types.rb",
  "if-elsif-else.rb",
  "case-when.rb",
  "ternary-operator.rb",
  "exceptions.rb",
  "objects1.rb",
  "objects2.rb",
  "files1.rb",
  "files2.rb",
]

class String
  def is_integer?
    self.to_i.to_s == self
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
  i = 0
  for rb_file in RB_FILES
    printf "%3d. %s\n",i,rb_file
    i += 1
  end
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

