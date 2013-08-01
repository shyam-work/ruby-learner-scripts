#!/usr/local/bin/ruby
#
puts "**********************************************Start execution*********************************"

def f(closure)
    puts
    puts "About to call closure"
    result = closure.call
    puts "Closure returned: #{result}"
    return "Value from f after closure returned"
end

puts "Proc.new: f returned: " + f(Proc.new { || "Value from Proc.new" })
puts "proc: f returned: " + f(proc { "Value from proc" })
puts "lambda: f returned: " + f(lambda { return "Value from lambda" })
puts "**********************************************"

my_block_proc_new = Proc.new { |a| "hello. I am  a proc.new"; } ;
my_block_lambda = lambda { |a| return "hello. I am a lambda"; } ;
my_block_lambda_no_args = lambda { || return "hello. I am a lambda with no args"; } ;
my_block_proc_new_no_args = Proc.new { || return "hello. I am a proc_new with no args"; } ;

f(my_block_lambda_no_args);
#f(my_block_proc_new_no_args);
f(my_block_proc_new);

def call_a_function(b)
b.call (0);
#yield
end

def call_a_block
jj = yield
puts jj;
end

call_a_function my_block_lambda
call_a_block { || "hello. I am a block"; } ;

def another_method
    return "Value from another_method"
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
puts "**********************************************End execution*********************************"
