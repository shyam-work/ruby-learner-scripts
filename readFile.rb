#!/usr/local/bin/ruby
counter = 1
file = File.new("readFile.rb", "r")
outArray = Array.new
while (line = file.gets)
    puts "#{counter}: #{line}"
    outArray << line
    counter = counter + 1
end
file.close
puts outArray

puts "================="

filename = "readFile.rb"
File.open(filename) do |fd| 
    fd.each do |line|
        puts line
    end   
end rescue abort("Exception: can't open %s" % filename)
puts "================="
puts "~~~~~~~~~~~~~~~~~"

fd = File.open(filename) 
fd.each do |line|
    puts line
end   

puts "Now calling try.sh command"
system "/home/msh/devel/ruby/try.sh"
puts "================="
puts "Now calling ls command"
system 'ls'
puts "LS ================="
$aa = `ls`
puts $aa
puts "LS ================="

def lambdaTester
    lambda { |initValue| puts "Hello world in a lambda #{initValue}" }
end

puts "~~~~~~~~~~~~~~~~~"

abc = lambdaTester
puts "Calling...========================="
abc.call (222)
