#!/usr/local/bin/ruby
# http://en.wikibooks.org/wiki/Ruby_Programming/Syntax/Method_Calls
def try_ret_procnew
ret = Proc.new { return "Baaam procnew before" }
ret.call
"This is not reached"
end

#prints "Baaam"
puts try_ret_procnew
                         
def try_ret_lambda
ret = lambda { return "Baaam" }
ret.call
"This is printed lambda after"
end

# prints "This is printed lambda after"
puts try_ret_lambda

puts "======================"

abc = Proc.new { |a| puts a }
def call_a_proc &inputProc
    inputProc.call Random.rand 10..33
end
def call_a_proc_2
    yield 'yielding'
end
call_a_proc &abc
call_a_proc_2 &abc
