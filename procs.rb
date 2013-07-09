#!/usr/bin/ruby
#
def gen_times(factor)
    return Proc.new {|n| n*factor }
end

x = 3;
times3 = gen_times(x)
x = 5;
times5 = gen_times(x)
x = 6

puts times3.call(12)               #=> 36
puts times5.call(5)                #=> 25
puts times3.call(times5.call(4))   #=> 60
