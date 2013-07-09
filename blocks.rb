#!/usr/local/bin/ruby
#
puts "**********************************************"

def f(closure)
    puts
    puts "About to call closure"
    result = closure.call
    puts "Closure returned: #{result}"
    "Value from f"
end

puts "f returned: " + f(Proc.new { "Value from Proc.new" })
#puts "f returned: " + f(proc { return "Value from proc" })
puts "f returned: " + f(lambda { "Value from lambda" })
puts "**********************************************"

def another_method
    "Value from method"
end

puts "f returned: " + f(method(:another_method))

def g
    puts "Starting g"
    result = f(proc { return "Value from proc" })
    puts "f returned within g: " + result

    puts "Starting g"
    result = f(lambda { return "Value from lambda" })
    puts "f returned within g: " + result 

    result = f(method(:another_method))
    puts "f returned within g: " + result 

    k = Proc.new { return "Value from Proc.new assigned" }
    result = f(k)
    puts "f returned within g: " + result 

    result = f(Proc.new { return "Value from Proc.new" })
    puts "f returned within g: " + result #never executed
    "Value from g"               #never executed

end

puts "g returned: #{g}"
