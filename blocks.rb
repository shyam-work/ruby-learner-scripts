#!/usr/local/bin/ruby
#
puts "**********************************************Start execution*********************************"

def func_caller(closure)
    puts
    puts "About to call closure"
    result = closure.call
    puts "Closure returned: #{result}"
    return "Value from f after closure returned"
end

puts "Proc.new: func_caller returned: " + func_caller(Proc.new { || "Value from Proc.new" })
puts "proc: func_caller returned: " + func_caller(proc { "Value from proc" })
puts "lambda: func_caller returned: " + func_caller(lambda { return "Value from lambda" })
puts "**********************************************"

my_block_proc_new = Proc.new { |a| "hello. I am  a proc.new"; } ;
my_block_lambda = lambda { |a| return "hello. I am a lambda"; } ;
my_block_lambda_no_args = lambda { || return "hello. I am a lambda with no args"; } ;
my_block_proc_new_no_args = Proc.new { || return "hello. I am a proc_new with no args"; } ;

func_caller(my_block_lambda_no_args);
#func_caller(my_block_proc_new_no_args);
func_caller(my_block_proc_new);

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

puts "func_caller returned: " + func_caller(method(:another_method))

def g
    puts "Starting g"
    result = func_caller(proc { return "Value from proc" })
    puts "func_caller returned within g: " + result

    puts "Starting g"
    result = func_caller(lambda { return "Value from lambda" })
    puts "func_caller returned within g: " + result 

    result = func_caller(method(:another_method))
    puts "func_caller returned within g: " + result 

    k = Proc.new { return "Value from Proc.new assigned" }
    result = func_caller(k)
    puts "func_caller returned within g: " + result 

    result = func_caller(Proc.new { return "Value from Proc.new" })
    puts "func_caller returned within g: " + result #never executed
    "Value from g"               #never executed

end

puts "g returned: #{g}"
puts "**********************************************End execution*********************************"
