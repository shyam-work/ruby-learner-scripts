#!/usr/bin/ruby
#

abc = Proc.new { |n| puts n }
ARGV.each &abc # convert a proc into a block and send it to each.

defg = lambda do |n| 
puts n 
puts n
end

ARGV.each &defg # convert a lambda into a block and send it to each.

ARGV.each {|f| 
puts f
}

i = 0;

loop do
    puts "hello #{i}"
    break if (i < 45)
end
